import UIKit

final class DetailView: UIView{

    // setting up a scroll view
    // 1. add scrollview
    // 2. add content view
    // 3. add subviews to content view
    // Note: must set high priority of content view to low, default is 1000

    

    
    private lazy var scrollView: UIScrollView = {
        let sv = UIScrollView()
        return sv
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        return view
    }()
 
    
    public lazy var imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "playdet")
        iv.clipsToBounds = true
        
        return iv
    }()
    public lazy var profilepicView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "nfl")
        iv.clipsToBounds = true
        
        return iv
    }()
    
    public lazy var shareButton: UIButton = {
        let iv = UIButton()
        iv.setImage(UIImage(named: "send-plane-line"), for: .normal)
        iv.clipsToBounds = true
        
        return iv
    }()
    public lazy var saveButton: UIButton = {
        let iv = UIButton()
        iv.setImage(UIImage(named: "bookmark-line"), for: .normal)
//        iv.widthAnchor.constraint(equalToConstant: 40).isActive = true
//        iv.heightAnchor.constraint(equalToConstant: 30).isActive = true
        iv.clipsToBounds = true
        
        return iv
    }()
    
    public lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byClipping
        label.text = "It is a long established fact that a reader the a will be a distracted readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a new this a more-or-less normal distribution of letters, as this opposed to this using 'Content here, content here', making it look like a readable English. Many desktop publishing packages and web page of this editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. It is a long established fact that a reader the a will be a distracted readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a new this a more-or-less normal distribution of letters, as this opposed to this using 'Content here, content here', making it look like a readable English. Many desktop There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which this don't look even slightly believable. If you are going to of this use a thoth passage of Lorem Ipsum, you need to be sure there isn't anything thot embarrassing hidden in the middle of text. thort All the Lorem Ipsum generators on the Internet tend to threpeat predefined chunks as necessary, making this the first true this generator on the Internet. It uses a dictionary of over 200 Latin words, a combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable."
        label.font = label.font.withSize(11)// title1, larger, title2 medium, title3 smaller
        return label
    }()
    public lazy var headlineLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "NFL is a long established fact that a reader will be readable content of a page when looking."
        label.font = label.font.withSize(14)// title1, larger, title2 medium, title3 smaller
        return label
    }()
    public lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Lorem ipsum"
        label.font = label.font.withSize(11)
        label.textColor = .white
        //      label.font = UIFont.preferredFont(forTextStyle: .title1) // title1, larger, title2 medium, title3 smaller
        return label
    }()
    public lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "5hrs ago"
        label.textColor = .white
        label.font = label.font.withSize(9)
        //      label.font = UIFont.preferredFont(forTextStyle: .title1) // title1, larger, title2 medium, title3 smaller
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
     setupScrollViewContstraints()
   setupContentViewConstraints()
       setupItemImageViewConstraints()
    setupProfilePicConstraints()
        setupProfileTitleConstraints()
       setupPostedConstraints()
      setupSaveButtonConstraints()
       setupShareButtonConstraints()
  setuphedlineLabelConstraints()
      setupDescriptionLabelConstraints()
       // setupTableView()
        
        
    }
    
    private func setupScrollViewContstraints() {
        addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    private func setupContentViewConstraints() {
        scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        let heightConstraint = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(250)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            heightConstraint,
        ])
    }
    
    private func setupItemImageViewConstraints() {
        contentView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.30)
        ])
    }
    

    
    private func setupProfilePicConstraints() {
        contentView.addSubview(profilepicView)
        profilepicView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profilepicView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            profilepicView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            profilepicView.trailingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
//            profilepicView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
    }
    
    private func setupProfileTitleConstraints() {
        contentView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 11),
            titleLabel.leadingAnchor.constraint(equalTo: profilepicView.trailingAnchor,constant: 10)
        ])
    }
    private func setupPostedConstraints() {
        contentView.addSubview(subTitleLabel)
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            subTitleLabel.leadingAnchor.constraint(equalTo: profilepicView.trailingAnchor,constant: 10)
        ])
    }
    
    private func setupSaveButtonConstraints() {
        contentView.addSubview(saveButton)
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 14),
            saveButton.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -10)
        ])
    }
    
    private func setupShareButtonConstraints() {
        contentView.addSubview(shareButton)
        shareButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            shareButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 14),
            shareButton.trailingAnchor.constraint(equalTo: saveButton.leadingAnchor, constant: -25)
        ])
    }
    
      private func setuphedlineLabelConstraints() {
        contentView.addSubview(headlineLabel)
          headlineLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headlineLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
            headlineLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            headlineLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
//            headlineLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
      }
    private func setupDescriptionLabelConstraints() {
      contentView.addSubview(descriptionLabel)
      descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
        descriptionLabel.topAnchor.constraint(equalTo: headlineLabel.bottomAnchor, constant: 10),
        descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
    
//        descriptionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
      ])
    }
    
//    private func setupTableView(){
//
//        contentView.addSubview(tableView)
////        tableView.translatesAutoresizingMaskIntoConstraints = false
////        NSLayoutConstraint.activate([
////            tableView.topAnchor.constraint(equalTo: contentView.topAnchor),
////            tableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
////            tableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
//////            tableView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 1)
////            tableView.heightAnchor.constraint(equalToConstant: 120)
////        ])
////        NSLayoutConstraint.activate([
////            tableView.topAnchor.constraint(equalTo: contentView.topAnchor),
////            tableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
////            tableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
////            tableView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.80)
////        ])
//
//    }
    
    
    
}
