import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var storyLabel: UILabel!
  @IBOutlet weak var choice1Button: UIButton!
  @IBOutlet weak var choice2Button: UIButton!
  
  var story = StoryBrain()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }
  
  @IBAction func choiceMade(_ sender: UIButton) {
    story.loadNextStory(choice: sender.titleLabel!.text!)
    updateUI()
  }
  
  func updateUI() {
    storyLabel.text = story.getStory().title
    choice1Button.setTitle(story.getStory().choice1, for: .normal)
    choice2Button.setTitle(story.getStory().choice2, for: .normal)
  }
  
}
