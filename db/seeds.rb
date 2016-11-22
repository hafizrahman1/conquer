PlanJob.delete_all
Fear.delete_all
Job.delete_all
User.delete_all
Plan.delete_all

glossophobia = Fear.create(name: "Glossophobia", description: "Glossophobia or speech anxiety is the fear of public speaking or of speaking in general. The word glossophobia comes from the Greek γλῶσσα glōssa, meaning tongue, and φόβος phobos, fear or dread. Some symptoms are Intense anxiety prior to, or simply at the thought of having to verbally communicate with any group. Avoidance of events which focus the group's attention on individuals in attendance. Physical distress, nausea, or feelings of panic in such circumstances.")
acrophobia = Fear.create(name: "Acrophobia" , description: "Experiencing emotional distress caused from a fear of heights - avoiding heights, anxiety around heights, excessive sweating, etc. 2-5% of the population have acrophobia. Twice as many women have acrophobia as men. Experiments have shown that infants are reluctant to crawl on glass floors showing that it’s more innate than a learned fear.")
social_phobia = Fear.create(name: "Social Phobia", description: "Social anxiety disorder (SAD), also known as social phobia, is an anxiety disorder characterized by a significant amount of fear in one or more social situations causing considerable distress and impaired ability to function in at least some parts of daily life. These fears can be triggered by perceived or actual scrutiny from others. In cognitive models of social anxiety disorder, those with social phobias experience dread over how they will be presented to others. Some symptoms are worrying about embarrassing or humiliating yourself, fear of physical symptoms that may cause you embarrassment, such as blushing, sweating, trembling or having a shaky voice, avoiding doing things or speaking to people out of fear of embarrassment, avoiding situations where you might be the center of attention, having anxiety in anticipation of a feared activity or event, spending time after a social situation analyzing your performance and identifying flaws in your interactions, and expecting the worst possible consequences from a negative experience during a social situation.")

planA = Plan.create(name: "I can speak", fear_id: glossophobia.id, deadline: 15)
job1 = Job.create(description: "Try to get used to your fears. Find a quiet area for 20-30 minutes and . Then, imagine a huge crowd of people judging you. Imagine upset faces and anger. Imagine the things that will cause you anxiety. Now start speaking. Speak about a topic you are very passionate about. Let the anxiety flow throw you, don’t hold it back. It’s okay to mess up. After the 20 minutes are over, stop and clear your mind. Do this at least once a day for the remaining of this track.")
job2 = Job.create(description: "Start giving short speeches to a group of family members or friends. The group should be 8-10 people. You may join a ToastMasters club if you cannot find a group big enough. Do this atleast once a week for 4 weeks.")
job3 = Job.create(description: "Take every public speaking opportunity you have and speak. Whether it’s a town meeting, a presentation at work, teaching a subject to a family member, a toast at a wedding or family get together, a PTA meeting, and more.")
PlanJob.create(plan_id: planA.id, job_id: job1.id)
PlanJob.create(plan_id: planA.id, job_id: job2.id)
PlanJob.create(plan_id: planA.id, job_id: job3.id)

planB = Plan.create(name: "I believe I can fly", fear_id: acrophobia.id, deadline: 25)
job4 = Job.create(description: "Understand and face the fear.  Determine the exact triggers for and intensity of your fear of heights. For example, sit with the thoughts and write a list of triggers and feelings experienced when triggered. If unable to analyze the fears by yourself, professional help is suggested.")
job5 = Job.create(description: "Practice and perfect relaxing.  Focusing on breath and certain practices helps get past the fear of heights.  Yoga, meditation, qi for example are ways that help you practice becoming sensitive to how your emotions are connected with physiological processes, like breathing, heart rate, and sweating.  When you practice getting comfortable with your system, you can help yourself by utilizing their breathing exercises and calm while experiencing triggers.")
job6 = Job.create(description: "Gradually expose yourself to higher heights. You can start by studying on a 2nd floor balcony, finding hills to hike on, and gradually exposing yourself to higher balconies and more steep hills.  If unable to do it on your own at first, have a model, friend or family member do it and you watch them from afar.")
PlanJob.create(plan_id: planB.id, job_id: job4.id)
PlanJob.create(plan_id: planB.id, job_id: job5.id)
PlanJob.create(plan_id: planB.id, job_id: job6.id)

planC = Plan.create(name: "I Love Who I am", fear_id: social_phobia.id, deadline: 20)
job7 = Job.create(description: "Learn to stop over thinking. Many times we produce anxiety in our own heads by day dreaming negative thoughts. We may be home, and while choosing what clothes to wear, we will start thinking about how others will judge us.")
job8 = Job.create(description: "Imagine if you lived in a house for thirty years but always avoided one room. If, after all that time, you actually ventured into the mysterious room, you might feel a little tense and anxious. Why? Because the more we avoid something, the more we send the message to the unconscious mind that: 'This is dangerous, that is why I am avoiding it.' So your mind, trying to be helpful, builds up the fear (of what it is you're avoiding) even more. Spend 3 weeks where atleast 5 times a week you force yourself into a socially intense situation. Whether it’s meeting people at a restaurant, going out with friends, attending community meetings, and more. Exposing yourself to social sitations, will greatly help you overcome this irrational fear of socializing.")
job9 = Job.create(description: "Positive instructions. Rather than: 'I hope I don't feel terrified as usual' (which is like someone asking you directions by telling you where they don't want to end up), ask yourself: 'How do I want to feel in these situations?' And get into the habit of focusing on that. Give yourself a 'target feeling' by looking at times when you are comfortable with others (often old friends or trusted family members). Then you can prepare your mind to perform the way you want in social situations by using these situations as a template. To do this, close your eyes and get yourself nice and relaxed. Take some time to remember how it feels to be with these familiar people until you get a strong feeling of comfort. Then imagine seeing yourself in a formerly less comfortable social situation, but behaving like you do with your trusted friends. This sort of mental rehearsal is extremely powerful and over time can make a massive difference. Do these mental rehersals before every social siutation for 3 weeks. You will start to notice a significant difference.")
PlanJob.create(plan_id: planC.id, job_id: job7.id)
PlanJob.create(plan_id: planC.id, job_id: job8.id)
PlanJob.create(plan_id: planC.id, job_id: job9.id)


agoraphobia = Fear.create(name: "Agoraphobia" , description: "The fear of open or crowded spaces. People with this fear often wont leave home.")
ophidiophobia = Fear.create(name: "Ophidiophobia" , description: "The fear of snakes. Phobics avoid certain cities because they have more snakes.")
cynophobia = Fear.create(name: "cynophobia", description: "The fear of dogs. This includes everything from small Poodles to large Great Danes.")

planD = Plan.create(name: "Crowds and Me", fear_id: agoraphobia.id, deadline: 20)
job10 = Job.create(description: "Breathing slowly and counting to ten while repeating the word ‘relax’ in calm and soothing manner. This is one of the expert recommended self help techniques that have been proven highly effective in managing panic symptoms.")
job11 = Job.create(description: "Slowly exposing oneself to one’s fears and also writing down things that make one feels fearful. This might turn out to be difficult in the beginning but gradually one can overcome the fear of crowded or open spaces.")
job12 = Job.create(description: "Educating self – There are many books and case studies available online and offline that can inspire one to fight their Agoraphobia.")

PlanJob.create(plan_id: planD.id, job_id: job10.id)
PlanJob.create(plan_id: planD.id, job_id: job11.id)
PlanJob.create(plan_id: planD.id, job_id: job12.id)

planE = Plan.create(name: "Snakes and Me", fear_id: ophidiophobia.id, deadline: 20)
job13 = Job.create(description: "Desensitization and reprocessing- This therapy is effective in addressing past traumatic experiences that might have caused the Ophidiophobia. It helps the patient overcome his/her fear by making him/her look at images of snakes and gradually enable him/her to hold small snakes. This helps the individual overcome fear and move forward in life.")
job14 = Job.create(description: "CBT or cognitive behavior therapy- Cognitive behavior or restructuring helps the individual identify his/her thought patterns that lie behind the fear of snakes. The patient is made to write down thoughts as to why one fears snakes. These include thoughts like: “snakes are slimy”, “they are dangerous and have the ability to kill humans” and so on.  Writing down these thoughts can help the ophidiophobic identify patterns leading to fear, anxiety and stress. The patients also learn to replace their negative associations with positive beliefs. This, in turn, can help decrease the fear.")
job15 = Job.create(description: "Relaxation techniques- These include meditation, controlled breathing, counting and positive reaffirmations when faced with images of snakes. The best part about these techniques is that one can tailor their own solutions and help oneself overcome the fear of snakes.
Individual counseling or group therapy- Talking about one’s fears can help release negative feelings while coming up with strategies to cope with their phobia.")
PlanJob.create(plan_id: planE.id, job_id: job13.id)
PlanJob.create(plan_id: planE.id, job_id: job14.id)
PlanJob.create(plan_id: planE.id, job_id: job15.id)

planF = Plan.create(name: "Dogs and Me", fear_id: cynophobia.id, deadline: 20)
job16 = Job.create(description: "technique developed by Joseph Wolpe in 1958. It involves having the patient imagine being in the same room with a dog while employing specific breathing and relaxation techniques to reduce one’s anxiety.")
job17 = Job.create(description: "In-vivo or exposure therapy can also help one get rid of one’s fear of dogs. This therapy involves a prolonged exposure to a dog until the patient can have a normal response to the animal.")
job18 = Job.create(description: "Exposure therapy can also be utilized in the form of self-help technique wherein the patient gradually exposes himself to canines, looks at photos, and progresses gradually to petting a dog etc. This type of gradual exposure can help one realize that his/her fears are unfounded.")
PlanJob.create(plan_id: planF.id, job_id: job16.id)
PlanJob.create(plan_id: planF.id, job_id: job17.id)
PlanJob.create(plan_id: planF.id, job_id: job18.id)


astraphobia = Fear.create(name: "Astraphobia", description: "The fear of thunder/lightning AKA Brontophobia, Tonitrophobia, Ceraunophobia.")
claustrophobia = Fear.create(name: "Claustrophobia" , description: "The fear of small spaces like elevators, small rooms and other enclosed spaces.")
mysophobia = Fear.create(name: "Mysophobia", description: "The fear of germs. It is also rightly termed as Germophobia or Bacterophobia.")

planG = Plan.create(name: "Thunder and Me", fear_id: astraphobia.id, deadline: 20)
job19 = Job.create(description: "Having a pet or a friend along at the time of thunderstorms is also known to help individuals cope with anxiety experienced during the thunderstorms. Most Astraphobics also feel safer in larger buildings such as schools, libraries etc rather than in their own homes.")
job20 = Job.create(description: "Reassurance and distraction in the form of stories, jokes or music etc can also help calm and ease fears of lightning or thunder.")
PlanJob.create(plan_id: planG.id, job_id: job19.id)
PlanJob.create(plan_id: planG.id, job_id: job20.id)

planH = Plan.create(name: "Space and Me", fear_id: claustrophobia.id, deadline: 20)
job22 = Job.create(description: "Flooding/exposure therapy– In this method, the patient is gradually introduced to his fears, in this case, small or enclosed spaces, until s/he realizes that no harm has come despite encountering one’s object of dread.")
job23 = Job.create(description: "Self help techniques– Patients can follow a few self help routines to overcome the fear of small spaces. For example, instead of rushing to get off the elevators, one can stay in them and go up/down several times to habituate oneself to the feelings of anxiety. Gradually, one can also work up to greater/severe fears and learn to control one’s anxiety until it goes away completely. Deep breathing, visualization, meditation and Yoga are also known to help control panic attacks.")
job24 = Job.create(description: "Modeling techniques– In this type of therapy, patients are encouraged to watch people confront their objects of fear with confidence and made to replicate or imitate the behavior.")
PlanJob.create(plan_id: planH.id, job_id: job22.id)
PlanJob.create(plan_id: planH.id, job_id: job23.id)
PlanJob.create(plan_id: planH.id, job_id: job24.id)

planI = Plan.create(name: "Germs and Me", fear_id: mysophobia.id, deadline: 20)
job26 = Job.create(description: "A combination of therapies is recommended for treating phobias like Mysophobia and anxiety disorders like OCD. These include drugs, cognitive behavior therapy, exposure and gradual desensitization therapies as well as relaxation training.")
job27 = Job.create(description: "Exposure therapy consists of helping the phobic relearn how to encounter germs gradually until he is able to refrain from washing his hands. The individuals also learn to focus on calming techniques and develop the ability to remain in a ‘contaminated environment’ without having a panic attack.")
job28 = Job.create(description: "Cognitive behavior therapies help the person with a fear of germs change his attitude and thoughts about them. This involves writing down negative and positive thoughts such as “I fear I will die from germs” to “Germs are sometimes healthy and useful to us” and so on. The patients are then asked to decide on beliefs that are healthier and useful to them.")
PlanJob.create(plan_id: planI.id, job_id: job26.id)
PlanJob.create(plan_id: planI.id, job_id: job27.id)
PlanJob.create(plan_id: planI.id, job_id: job28.id)
