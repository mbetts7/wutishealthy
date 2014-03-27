users = []
entries = []

users << User.create(username: 'mike7', email: 'mike@gmail.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Finn789', email: 'FinnMurray@rhyta.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Ashton87', email: 'AshtonRide@jourrapide.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Zac0987', email: 'ZacChave@rhyta.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Ruby098', email: 'RubySpain@jourrapide.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Bob39', email: 'bob39@rhyta.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Dave123', email: 'dave123@rhyta.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Cal2014', email: 'cal2014@rhyta.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'bkyln112', email: 'bklyn112@rhyta.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'george1', email: 'george1@rhyta.com', password: 'password', password_confirmation: 'password')

# GET https://www.readability.com/api/content/v1/parser?url=http://www.boston.com/lifestyle/health/blogs/daily-dose/2014/03/19/new-study-fuels-debate-dietary-fats-and-heart-disease/ni2udnGRteJ4DGuamv0VCL/blog.html&token=bdaa7809dc9a543000fe05d937148acd74eb3d76
entries << Entry.create(
  image_url: '', 
  link_url: 'http://www.boston.com/lifestyle/health/blogs/daily-dose/2014/03/19/new-study-fuels-debate-dietary-fats-and-heart-disease/ni2udnGRteJ4DGuamv0VCL/blog.html', 
  readability_title: 'New study fuels debate on dietary fats and heart disease', 
  readability_author: 'Deborah Kotz / Globe Staff', 
  readability_domain: 'www.boston.com', 
  readability_word_count: 727, 
  readability_excerpt: 'Decades after Americans have switched from whole milk to skim, from butter to olive oil, and from red meat to turkey breast &#x2014; all in an effort to cut saturated fat &#x2014; nutrition&hellip;', 
  readability_content: '"<div><section class="article-text">   <div class="article-lead"> <p>Decades after Americans have switched from whole milk to skim, from butter to olive oil, and from red meat to turkey breast &#x2014; all in an effort to cut saturated fat &#x2014; nutrition researchers have concluded that saturated fat might not be so bad for our hearts after all. A new study getting a lot of attention this week analyzed a giant trove of data from 27 clinical trials and 49 population studies and found no difference in heart disease rates among those who had the least amount of saturated fat compared to those who ate the most. </p> </div> <p>People given fish oil supplements in clinical trials were no less likely to have a heart attack or die of heart disease than those who took placebos. Ditto for those who switched to olive oil &#x2014; a monounsaturated fat shown to improve cholesterol levels &#x2014; as well as for those who embraced polyunsaturated fats, like vegetable oil.</p> <p>The new study, published in the <a target="_blank" href="http://annals.org/article.aspx?articleid=1846638&amp;atab=7">Annals of Internal Medicine</a>, found that only trans fats from partially hydrogenated oils were linked to a moderately higher rate of heart disease, but these artificial fats have largely been taken out of the food supply and will likely <a target="_blank" href="http://www.bostonglobe.com/lifestyle/health-wellness/2013/11/08/trans-fat-banned-from-food-under-fda-plan/McdXy8ImD0nMCkB1dYb7UM/story.html">be banned altogether</a> by the US Food and Drug Administration.</p> <p>&#x201C;I think the evidence is really clear that the dietary guidelines shouldn&#x2019;t be focusing on reducing saturated fat,&#x201D; said study coauthor Dr. Dariush Mozaffarian, an epidemiologist at Harvard School of Public Health. &#x201C;There is no good evidence that low-fat dairy products are healthier than high-fat dairy.&#x201D; His <a target="_blank" href="http://www.boston.com/lifestyle/health/blog/dailydose/2010/12/whole_milk_vs_s.html">previous research</a> found that those who ate butter, whole milk, and cheddar cheese had a lower diabetes risk than those who opted for skim milk and fat-free yogurt.</p> <p>Guidelines issued by the American Heart Association and American College of Cardiology last November recommended limiting saturated fat intake to no more than 5 to 6 percent of the total calories consumed to prevent heart disease. The average American currently eats about 11 percent of calories from saturated fat, less than the average consumed a few decades ago.</p> <p>Those recommendations were based on &#x201C;very strong, very clear&#x201D; studies showing that lowering saturated fat intake lowers the level of LDL cholesterol, the type considered to be heart-damaging, said Tufts University nutrition professor Alice Lichtenstein, a coauthor of the new guideline. &#x201C;To give people the message that they don&#x2019;t have to worry about saturated fat and can go back to butter, cheese, and lots of red meat would be really wrong,&#x201D; she added. </p> <p>Where the nutrition experts do agree: Getting a clear picture on how the body handles dietary fats is very complex. For example, studies haven&#x2019;t demonstrated that the LDL-raising effects of consuming saturated fats leads to more heart attacks and strokes. &#x201C;Saturated fat in the diet makes LDL particles bigger, but it doesn&#x2019;t increase the number of LDL particles, which we now think is responsible for the increased heart risk,&#x201D; Mozaffarian said.</p> <p>Complicating matters further, the body manufactures its own artery-clogging fats in the liver, often from excess carbohydrates that we eat.</p> <p>&#x201C;This is very confusing for everyone,&#x201D; said Marion Nestle, a nutrition professor at New York University,&#x201C; and I think the scientific debate will continue for a while, so what are we supposed to do until then?&#x201D;</p> <p>Nestle&#x2019;s advice echoes what our grandmothers told us: eat all things in moderation. &#x201C;We should be enjoying the pleasure of food, but in very small portions.&#x201D; Eating a quarter-pound burger once or twice a month is a far cry from eating the 22-ounce ribeye at Morton&#x2019;s once or twice a week.</p> <p>Where we also get into trouble is when we overdo on the oils by frying our foods in them. Another <a target="_blank" href="http://www.bmj.com/content/348/bmj.g1610">intriguing new finding</a> from the Harvard School of Public Health found that people with a genetic predisposition for obesity&#x2014;based on certain gene mutations that they inherited&#x2014;were twice as likely to become obese if they reported eating fried foods more than four times a week compared to those with the genetic predisposition who ate fried foods less than once a week.</p> <p>&#x201C;We should be encouraging everyone to reduce the consumption of fried foods,&#x201D; said study leader Lu Qi, since such a move could help mitigate any genetic tendencies toward obesity. </p> <div class="last-paragraph"> <p>Was it worse to fry in butter than olive oil? &#x201C;We didn&#x2019;t look at that,&#x201D; Qi said. &#x201C;We found that all fried foods were bad.&#x201D; </p> </div></section> </div>",', 
  question: 'Is sugar or fat worse for you?',
  user_id: 1)

# GET https://www.readability.com/api/content/v1/parser?url=http://well.blogs.nytimes.com/2014/03/17/study-questions-fat-and-heart-disease-link/?_php=true&_type=blogs&_php=true&_type=blogs&ref=nutrition&_r=1&gwh=1F2E84156208B88B2D8105F70FA5ABBE&gwt=regi&token=bdaa7809dc9a543000fe05d937148acd74eb3d76
entries << Entry.create(
  image_url: '', 
  link_url: 'http://well.blogs.nytimes.com/2014/03/17/study-questions-fat-and-heart-disease-link/?_php=true&_type=blogs&_php=true&_type=blogs&ref=nutrition&_r=1&gwh=1F2E84156208B88B2D8105F70FA5ABBE&gwt=regi', 
  readability_title: 'Study Questions Fat and Heart Disease Link', 
  readability_author: "ANAHAD O'CONNOR", 
  readability_domain: 'well.blogs.nytimes.com', 
  readability_word_count: 1126, 
  readability_excerpt: 'A new study questions the relationship between heart disease and saturated fat. Many of us have long been told that saturated fat, the type found in meat, butter and cheese, causes heart disease. But&hellip;',
  readability_content: '<div><div class=\"entry-content\"><div class=\"w592\"><img src=\"http://graphics8.nytimes.com/images/2014/03/18/science/18fats/18fats-tmagArticle.jpg\" id=\"100000002772857\" width=\"592\" alt=\"A new study questions the relationship between heart disease and saturated fat.\"> <span class=\"caption\">A new study questions the relationship between heart disease and saturated fat.</span></div>\n\n\n<p class=\"story-body-text\">Many of us have long been told that saturated fat, the type found in meat, butter and cheese, causes heart disease. But a large and exhaustive new analysis by a team of international scientists found no evidence that eating saturated fat increased heart attacks and other cardiac events.</p>\n<p class=\"story-body-text\">The new findings are part of a growing body of research that has challenged the accepted wisdom that saturated fat is inherently bad for you and will continue the debate about what foods are best to eat.</p>\n<p class=\"story-body-text\">For decades, health officials have urged the public to avoid saturated fat as much as possible, saying it should be replaced with the unsaturated fats in foods like nuts, fish, seeds and vegetable oils.</p>\n<p class=\"story-body-text\">But the new research, published on Monday in the journal Annals of Internal Medicine, did not find that people who ate higher levels of saturated fat had more heart disease than those who ate less. Nor did it find less disease in those eating higher amounts of unsaturated fat, including monounsaturated fat like olive oil or polyunsaturated fat like corn oil.</p>\n<p class=\"story-body-text\">&#x201C;My take on this would be that it&#x2019;s not saturated fat that we should worry about&#x201D; in our diets, said Dr. Rajiv Chowdhury, the lead author of the new study and a cardiovascular epidemiologist in the department of public health and primary care at Cambridge University.</p>\n<p class=\"story-body-text\">But Dr. Frank Hu, a professor of nutrition and epidemiology at the Harvard School of Public Health, said the findings should not be taken as &#x201C;a green light&#x201D; to eat more steak, butter and other foods rich in saturated fat. He said that looking at individual fats and other nutrient groups in isolation could be misleading, because when people cut down on fats they tend to eat more bread, cold cereal and other refined carbohydrates that can also be bad for cardiovascular health.</p>\n<p class=\"story-body-text\">&#x201C;The single macronutrient approach is outdated,&#x201D; said Dr. Hu, who was not involved in the study. &#x201C;I think future dietary guidelines will put more and more emphasis on real food rather than giving an absolute upper limit or cutoff point for certain macronutrients.&#x201D;</p>\n<p class=\"story-body-text\">He said people should try to eat foods that are typical of the Mediterranean diet, like nuts, fish, avocado, high-fiber grains and olive oil. A <a title=\"The Times article.\" href=\"http://www.nytimes.com/2013/02/26/health/mediterranean-diet-can-cut-heart-disease-study-finds.html\" target=\"_blank\">large clinical trial last year,</a> which was not included in the current analysis, found that a Mediterranean diet with more nuts and extra virgin olive oil reduced heart attacks and strokes when compared with a lower fat diet with more starches.</p>\n<p class=\"story-body-text\">Alice H. Lichtenstein, a nutritional biochemist at Tufts University, agreed that &#x201C;it would be unfortunate if these results were interpreted to suggest that people can go back to eating butter and cheese with abandon,&#x201D; citing evidence that replacing saturated fat with foods that are high in polyunsaturated fats &#x2013; instead of simply eating more carbohydrates &#x2013; reduces cardiovascular risk.</p>\n<p class=\"story-body-text\">Dr. Lichtenstein, who was not involved in the latest study, was the lead author of the American Heart Association&#x2019;s dietary guidelines, which recommend that people restrict saturated fat to <a title=\"Related article.\" href=\"https://www.heart.org/HEARTORG/GettingHealthy/NutritionCenter/HealthyEating/The-American-Heart-Associations-Diet-and-Lifestyle-Recommendations_UCM_305855_Article.jsp\" target=\"_blank\">as little as 5 percent of their daily calories</a>, or roughly two tablespoons of butter or two ounces of Cheddar cheese for the typical person eating about 2,000 calories a day. The heart association states that restricting saturated fat and eating more unsaturated fat, beans and vegetables <a title=\"Related article.\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/16785338\" target=\"_blank\">can protect against heart disease by lowering low-density lipoprotein or so-called bad cholesterol</a>.</p>\n<p class=\"story-body-text\">In the new research, Dr. Chowdhury and his colleagues sought to evaluate the best evidence to date, drawing on nearly 80 studies involving more than a half million people. They looked not only at what people reportedly ate, but at more objective measures such as the composition of fatty acids in their bloodstreams and in their fat tissue. The scientists also reviewed evidence from 27 randomized controlled trials &#x2013; the gold standard in scientific research &#x2013; that assessed whether taking polyunsaturated fat supplements like fish oil promoted heart health.</p>\n<p class=\"story-body-text\">The researchers did find a link between trans fats, the now widely maligned partially hydrogenated oils that had long been added to processed foods, and heart disease. But they found no evidence of dangers from saturated fat, or benefits from other kinds of fats.</p>\n<p class=\"story-body-text\">The primary reason saturated fat has historically had a bad reputation is that it increases <a title=\"Related article.\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/16785338\" target=\"_blank\">low-density lipoprotein</a> cholesterol, or LDL, the kind that raises the risk for heart attacks. But the relationship between saturated fat and LDL is complex, said Dr. Chowdhury. In addition to raising LDL cholesterol, saturated fat also increases high<a title=\"Related article.\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/16785338\" target=\"_blank\">-density lipoprotein</a>, or HDL, the so-called good cholesterol. And the LDL that it raises is a subtype of big, fluffy particles that are generally benign. Doctors refer to a preponderance of these particles as LDL pattern A.</p>\n<p class=\"story-body-text\">The smallest and densest form of LDL is more dangerous. These particles are easily oxidized and are more likely to set off inflammation and contribute to the buildup of artery-narrowing plaque. An LDL profile that consists mostly of these particles, known as pattern B, usually coincides with high triglycerides and low levels of HDL, both risk factors for heart attacks and stroke.</p>\n<p class=\"story-body-text\">The smaller, more artery-clogging particles are increased not by saturated fat, but by sugary foods and an excess of carbohydrates, Dr. Chowdhury said. &#x201C;It&#x2019;s the high carbohydrate or sugary diet that should be the focus of dietary guidelines,&#x201D; he said. &#x201C;If anything is driving your low-density lipoproteins in a more adverse way, it&#x2019;s carbohydrates.&#x201D;</p>\n<p class=\"story-body-text\">While the new research showed no relationship overall between saturated or polyunsaturated fat intake and cardiac events, there are numerous unique fatty acids within these two groups, and there was some indication that they are not all equal.</p>\n<p class=\"story-body-text\">When the researchers looked at fatty acids in the bloodstream, for example, they found that margaric acid, a saturated fat in milk and dairy products, was associated with lower cardiovascular risk. Two types of omega-3 fatty acids, the polyunsaturated fats found in fish, were also protective. But a number of the omega-6 polyunsaturated fatty acids, commonly found in vegetable oils and processed foods, may pose risks, the findings suggested.</p>\n<p class=\"story-body-text\">The researchers then looked at data from the randomized trials to see if taking supplements like fish oil produced any cardiovascular benefits. It did not.</p>\n<p class=\"story-body-text\">But Dr. Chowdhury said there might be a good explanation for this discrepancy. The supplement trials mostly involved people who had pre-existing heart disease or were at high risk of developing it, while the other studies involved generally healthy populations.</p>\n<p class=\"story-body-text\">So it is possible that the benefits of omega-3 fatty acids lie in preventing heart disease, rather than treating or reversing it. At least two large clinical trials designed to see if this is the case are currently underway.</p>\n</div>\n\t\t\t\t\t\t\n\t\t</div>', 
  question: 'Do you avoid saturated fat in your diet?',
  user_id: 1)