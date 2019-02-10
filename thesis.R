thesis2 <- read.csv("thesis2.csv",  header = TRUE)
thesis2
head(thesis2)

##小学校種別のダミー(公立なら0、国立・私立なら1)
elesch <- factor(thesis2$elesch, levels = c("公立", "国立", "私立"), labels = c(1, 2, 3))
elesch <- as.numeric(elesch)
elesch <- replace(elesch, (elesch == 1), 0)
elesch <- replace(elesch, (elesch > 1), 1)
elesch

##中学校種別のダミー(公立なら0、国立・私立なら1)
junisch <- factor(thesis2$junisch, levels = c("公立", "国立", "私立"), labels = c(1, 2, 3))
junisch <- as.numeric(junisch)
junisch <- replace(junisch, (junisch == 1), 0)
junisch <- replace(junisch, (junisch > 1), 1)
junisch

##高校種別のダミー(公立なら0、国立・私立なら1)
highsch <- factor(thesis2$highsch, levels = c("公立", "国立", "私立"), labels = c(1, 2, 3))
highsch <- as.numeric(highsch)
highsch <- replace(highsch, (highsch == 1), 0)
highsch <- replace(highsch, (highsch > 1), 1)
highsch

##本の数(100未満なら0、100以上なら1)
book <- factor(thesis2$book, levels = c("0-25", "26-100", "100以上"), labels = c(1, 2, 3))
book <- as.numeric(book)
book <- replace(book, (book == 1), 0)
book <- replace(book, (book == 2), 0)
book <- replace(book, (book == 3), 1)
book

##性別(男性 = 0, 女性 = 1。つまり女性ダミー変数の状態)
gender <- factor(thesis2$gender, levels = c("男性", "女性"), labels = c(1,2))
gender <- as.numeric(gender)
gender <- replace(gender, (gender == 1), 0)
gender <- replace(gender, (gender == 2), 1)
gender

##GPA。下から順番に8段階
gpa <- factor(thesis2$GPA, levels = c("0から0.49", "0.50から0.99", "1.00から1.49", "1.50から1.99", "2.00から2.49"
                                      , "2.50から2.99", "3.00から3.49", "3.50から4.00"), labels = c(1,2,3,4,5,6,7,8))
gpa <- as.numeric(gpa)
gpa

##母親の学歴。下から順番に5段階。該当なしはNAで。
momedu <- factor(thesis2$momedu, levels = c("中学卒業", "高校卒業", "短期大学もしくは専門学校卒業", "高専もしくは4年制大学卒業"
                                            , "大学院修士課程以上"), labels = c(1,2,3,4,5))
momedu <- as.numeric(momedu)
momedu

##父学歴。下から順番に5段階。該当なしはNAで。
dadedu <- factor(thesis2$dadedu, levels = c("中学卒業", "高校卒業", "短期大学もしくは専門学校卒業", "高専もしくは4年制大学卒業"
                                            , "大学院修士課程以上"), labels = c(1,2,3,4,5))
dadedu <- as.numeric(dadedu)
dadedu

##母職業
momjob <- factor(thesis2$momJob, levels = c("無職", "パート、契約社員、フリーターなど", "専業主婦", "その他(専門職以外の自営業：個人商店など)"
                                            , "会社員(その他)", "会社員(管理職)", "公務員(その他)", "公務員(高級官僚、国会議員)", "専門的職業(その他)", "専門的職業(医師、歯科医師、検察官、裁判官、弁護士、大学教員、パイロット、大企業の役員)")
                 , labels = c(1,2,3,4,5,6,7,8,9,10))
momjob
momjob <- as.numeric(momjob)
momjob <- replace(momjob, (momjob == 2), 1)
momjob <- replace(momjob, (momjob == 3), 1)
momjob <- replace(momjob, (momjob == 4), 3)
momjob <- replace(momjob, (momjob == 5), 2)
momjob <- replace(momjob, (momjob == 6), 5)
momjob <- replace(momjob, (momjob == 7), 4)
momjob <- replace(momjob, (momjob == 8), 7)
momjob <- replace(momjob, (momjob == 9), 6)
momjob <- replace(momjob, (momjob == 10), 8)
momjob

##父職業
dadjob <- factor(thesis2$dadjob, levels = c("無職", "パート、契約社員、フリーターなど", "専業主婦", "その他(専門職以外の自営業：個人商店など)"
                                            , "会社員(その他)", "会社員(管理職)", "公務員(その他)", "公務員(高級官僚、国会議員)", "専門的職業(その他)", "専門的職業(医師、歯科医師、検察官、裁判官、弁護士、大学教員、パイロット、大企業の役員)")
                 , labels = c(1,2,3,4,5,6,7,8,9,10))
dadjob <- as.numeric(dadjob)
dadjob <- replace(dadjob, (dadjob == 2), 1)
dadjob <- replace(dadjob, (dadjob == 3), 1)
dadjob <- replace(dadjob, (dadjob == 4), 3)
dadjob <- replace(dadjob, (dadjob == 5), 2)
dadjob <- replace(dadjob, (dadjob == 6), 5)
dadjob <- replace(dadjob, (dadjob == 7), 4)
dadjob <- replace(dadjob, (dadjob == 8), 7)
dadjob <- replace(dadjob, (dadjob == 9), 6)
dadjob <- replace(dadjob, (dadjob == 10), 8)
dadjob

## computerの数
comp <- factor(thesis2$com, levels = c("0", "1", "2", "3", "3台以上"), labels = c(1,2,3,4,5))
comp <- as.numeric(comp)
comp



analysis <- data.frame(sl11 = thesis2$sl11, sl12 = thesis2$sl12, sl13 = thesis2$sl13, sl14 = thesis2$sl14, sl15 = thesis2$sl5, sl21 = thesis2$sl21
                       , sl22 = thesis2$sl22, sl23 = thesis2$sl23, sl31 = thesis2$sl31, sl32 = thesis2$sl32, sl33= thesis2$sl33,
                       sl34 = thesis2$sl34, sl35 = thesis2$sl35, sl41 = thesis2$sl41, sl42 = thesis2$sl42, sl43 = thesis2$sl43,
                       sl44 = thesis2$sl44, sl45 = thesis2$sl45, cl1 = thesis2$cl1, cl2 = thesis2$cl2, cl3 = thesis2$cl3, cl4 = thesis2$cl4,
                       comp = comp, book = book, elesch = elesch, pr1 = thesis2$pr1, pr2 = thesis2$pr2, pr3 = thesis2$pr3,
                       pr4 = thesis2$pr4, pr5 = thesis2$pr5, pr6 = thesis2$pr6, pr7 = thesis2$pr7, pr8 = thesis2$pr8,pr9 = thesis2$pr9,
                       junisch = junisch, ju1 = thesis2$ju1, ju2 = thesis2$ju2, ju3 = thesis2$ju3, ju4 = thesis2$ju4, ju5 = thesis2$ju5,
                       ju6 = thesis2$ju6, ju7 = thesis2$ju7, ju8 = thesis2$ju8, ju9 = thesis2$ju9, highsch = highsch, 
                       high1 = thesis2$high1, high2 = thesis2$high2, high3 = thesis2$high3, high4 = thesis2$high4, high5 = thesis2$high5,
                       high6 = thesis2$high6, high7 = thesis2$high7 , high8 = thesis2$high8, high9 = thesis2$high9, year = thesis2$year, 
                       gender = gender, gpa = gpa, momjob = momjob, dadjob = dadjob, momedu = momedu, dadedu = dadedu)
analysis

##小学校に関する質問の因子分析
pr_factor <- data.frame(pr1 = thesis2$pr1, pr2 = thesis2$pr2, pr3 = thesis2$pr3,
                        pr4 = thesis2$pr4, pr5 = thesis2$pr5, pr6 = thesis2$pr6, pr7 = thesis2$pr7, pr8 = thesis2$pr8,pr9 = thesis2$pr9)
corpr <- cor(pr_factor)
corpr
eigenpr <- eigen(corpr)$values
eigenpr
plot(eigenpr, type = "b")
factanalpr <- factanal(x = pr_factor,factors= 2 , rotation="varimax")
print(factanalpr,　cutoff=0)

##中学校に関する質問の因子分析
juni_factor <- data.frame(ju1 = thesis2$ju1, ju2 = thesis2$ju2, ju3 = thesis2$ju3,
                        ju4 = thesis2$ju4, ju5 = thesis2$ju5, ju6 = thesis2$ju6, ju7 = thesis2$ju7, ju8 = thesis2$ju8,ju9 = thesis2$ju9)
corjuni <- cor(juni_factor)
eigenjuni <- eigen(corjuni)$values
eigenjuni
plot(eigenjuni, type = "b")
factanaljuni <- factanal(x = juni_factor,factors= 2 , rotation="varimax")
print(factanaljuni, cutoff = 0)

##高校に関する質問の因子分析
high_factor <- data.frame(high1 = thesis2$high1, high2 = thesis2$high2, high3 = thesis2$high3,
                          high4 = thesis2$high4, high5 = thesis2$high5, high6 = thesis2$high6, high7 = thesis2$high7, high8 = thesis2$high8,high9 = thesis2$high9)
corhigh <- cor(high_factor)
eigenhigh <- eigen(corhigh)$values
eigenhigh
plot(eigenhigh, type = "b")
factanalhigh <- factanal(x = high_factor,factors= 2 , rotation="varimax")
print(factanalhigh, cutoff = 0)

##文化資本の因子分析
cul_factor <- data.frame(cl1 = thesis2$cl1, cl2 = thesis2$cl2, cl3 = thesis2$cl3, cl4 = thesis2$cl4)
corcl <- cor(cul_factor)
eigencl <- eigen(corcl)$values
eigencl
factanalcl <- factanal(x = cul_factor, factors = 2, rotation = "varimax")
print(factanalcl, cutoff = 0)


##一応の因子分析
factorou <- data.frame(sl11 = thesis2$sl11, sl12 = thesis2$sl12, sl13 = thesis2$sl13, sl14 = thesis2$sl14, sl15 = thesis2$sl5, sl21 = thesis2$sl21
                       , sl22 = thesis2$sl22, sl23 = thesis2$sl23, sl31 = thesis2$sl31, sl32 = thesis2$sl32, sl33= thesis2$sl33,
                       sl34 = thesis2$sl34, sl35 = thesis2$sl35, sl41 = thesis2$sl41, sl42 = thesis2$sl42, sl43 = thesis2$sl43,
                       sl44 = thesis2$sl44, sl45 = thesis2$sl45)
corou <- cor(factorou)
eigenou <- eigen(corou)$values
eigenou
plot(eigenou, type = "b")
factanalou <- factanal(x = factorou, factors = 4, rotation = "varimax")
print(factanalou, cutoff = 0)


##分析用にデータを再構築する
overall <- thesis2$sl11 + thesis2$sl12 + thesis2$sl13 + thesis2$sl14 + thesis2$sl5 + thesis2$sl21 + thesis2$sl22 + thesis2$sl23 + thesis2$sl31 + thesis2$sl32 + thesis2$sl33 + thesis2$sl34 + thesis2$sl35 + thesis2$sl41 + thesis2$sl42 + thesis2$sl43 + thesis2$sl44 + thesis2$sl45
effort <- thesis2$sl11 + thesis2$sl12 + thesis2$sl13 + thesis2$sl14 + thesis2$sl5
plan <- thesis2$sl21 + thesis2$sl22 + thesis2$sl23
monitor <- thesis2$sl31 + thesis2$sl32 + thesis2$sl33 + thesis2$sl34 + thesis2$sl35 + thesis2$sl41 + thesis2$sl42
strategy <- thesis2$sl43 + thesis2$sl44 + thesis2$sl45
prenv <- thesis2$pr2 + thesis2$pr3 + thesis2$pr4 + thesis2$pr5 + thesis2$pr6 + thesis2$pr7
prlec <- thesis2$pr8 + thesis2$pr9
junienv <- thesis2$ju2 + thesis2$ju3 + thesis2$ju4 + thesis2$ju5 + thesis2$ju6 + thesis2$ju7
junilec <- thesis2$ju8 + thesis2$ju9
highenv <- thesis2$high2 + thesis2$high3 + thesis2$high4 + thesis2$high5 + thesis2$high6 + thesis2$high7
highlec <- thesis2$high8 + thesis2$high9
year <- factor(thesis2$year, levels = c("1", "2", "3", "4", "5年以上"), labels = c(1,2,3,4,5))
year <- as.numeric(year)
year

analysis2 <- data.frame(year = year, gender = gender, gpa = gpa, overall = overall, effort = effort, plan = plan, monitor = monitor, strategy = strategy, comp = comp, book = book, 
                        cl1 = thesis2$cl1, cl2 = thesis2$cl2, cl3 = thesis2$cl3, cl4 = thesis2$cl4, momjob = momjob, dadjob = dadjob, momedu = momedu, dadedu = dadedu, parentedu = momedu + dadedu, elesch = elesch, prsmall = thesis2$pr1, prenv = prenv, prlec = prlec,
                        junisch = junisch, junismall = thesis2$ju1,junienv = junienv, junilec = junilec, 
                        highsch = highsch, highsmall = thesis2$high1, highenv = highenv, highlec = highlec)
analysis2


overallreg <- lm(overall ~ year + gender + gpa + momedu + dadedu + junienv + highenv + cl2, data = analysis2)

summary(clreg)

edureg <- lm(effort ~ year + gender + gpa + momedu + dadedu + junienv + highenv + cl2, data = analysis2)
summary(edureg)

edureg2 <- lm(monitor ~ year + gender + gpa + momedu + dadedu + junienv + highenv + cl2, data = analysis2)
summary(edureg2)

edureg3 <- lm(plan ~ year + gender + gpa + momedu + dadedu + junienv + highenv + cl2, data = analysis2)
edureg4 <- lm(strategy ~ year + gender + gpa + momedu + dadedu + junienv + highenv + cl2, data = analysis2)



par(family = "HiraKakuProN-W3")
hist(highenv,main = "高校環境", xlab = "高校環境スコア(0~30)", ylab = "頻度")
summary(analysis2$cl2)


a <- lm(overall~year, data = analysis2)
summary(a)

summary(analysis2$parentedu)

a <- lm(overall~analysis2$year, data = analysis2)
b <- lm(overall~analysis2$gender, data = analysis2)
c <- lm(overall~analysis2$parentedu, data = analysis2)
d <- lm(overall~analysis2$highenv, data = analysis2)
e <- lm(overall~analysis2$prenv, data = analysis2)
f <- lm(overall~analysis2$junienv, data = analysis2)
g <- lm(overall~analysis2$cl1, data = analysis2)
h <- lm(overall~analysis2$cl2, data = analysis2)
i <- lm(overall~analysis2$cl3, data = analysis2)
j <- lm(overall~analysis2$cl4, data = analysis2)
k <- lm(overall~analysis2$book, data = analysis2)
l <- lm(overall~analysis2$comp, data = analysis2)
m <- lm(overall~analysis2$junisch, data = analysis2)
n <- lm(overall~analysis2$highsch, data = analysis2)
o <- lm(overall~analysis2$prlec, data = analysis2)
p <- lm(overall~analysis2$junilec, data = analysis2)
q <- lm(overall~analysis2$highlec, data = analysis2)

summary(a)
summary(b)
summary(c)
summary(d)
summary(e)
summary(f)
summary(g)
summary(h)
summary(i)
summary(j)
summary(k)
summary(l)
summary(m)
summary(n)
summary(o)
summary(p)
summary(q)


analysis3 <- data.frame(year = year, gender = gender, comp = comp, book = book, 
                        cl1 = thesis2$cl1, cl2 = thesis2$cl2, cl3 = thesis2$cl3, cl4 = thesis2$cl4, parentedu = momedu + dadedu, elesch = elesch, prsmall = thesis2$pr1, prenv = prenv, prlec = prlec,
                        junisch = junisch, junismall = thesis2$ju1,junienv = junienv, junilec = junilec, 
                        highsch = highsch, highsmall = thesis2$high1, highenv = highenv, highlec = highlec)
cor(analysis3, method="p")


plot(analysis3$cl2, analysis3$cl3)  
plot(analysis3$highenv, analysis3$junienv)
cor.test(analysis3$prlec, analysis3$prenv, method="pearson") 
cor.test(analysis3$prlec, analysis3$junilec, method="pearson") 
cor.test(analysis3$junisch, analysis3$highsch, method="pearson") 
cor.test(analysis3$highenv, analysis3$highlec, method="pearson") 


r <- lm(overall~analysis3$prlec + analysis3$prenv)
require(car)
vif(r)

r <- lm(overall~analysis3$junilec + analysis3$prlec)
require(car)
vif(r)

r <- lm(overall~analysis3$highlec + analysis3$junilec)
require(car)
vif(r)

r <- lm(overall~analysis3$junisch + analysis3$highsch)
require(car)
vif(r)

r <- lm(overall~analysis3$junismall + analysis3$prsmall)
require(car)
vif(r)

r <- lm(overall~analysis3$junienv + analysis3$highenv)
require(car)
vif(r)

r <- lm(overall~analysis3$junienv + analysis3$junilec)
require(car)
vif(r)

r <- lm(overall~analysis3$junienv + analysis3$highenv)
require(car)
vif(r)

r <- lm(overall~analysis3$highsmall + analysis3$highlec)
require(car)
vif(r)

r <- lm(overall~analysis3$highenv + analysis3$highlec)
require(car)
vif(r)


r <- lm(overall~analysis2$highenv + analysis2$highlec + analysis2$highsmall, data = analysis2)
summary(r)


r <- lm(overall~analysis2$gender + analysis2$parentedu + analysis2$prenv + analysis2$junienv + analysis2$highenv + analysis2$cl2 + analysis2$cl4, data = analysis2)
summary(r)


r <- lm(analysis2$effort~analysis2$gender + analysis2$parentedu + analysis2$prenv + analysis2$junienv + analysis2$highenv + analysis2$cl2 + analysis2$cl4, data = analysis2)
summary(r)

r <- lm(analysis2$monitor~analysis2$gender + analysis2$parentedu + analysis2$prenv + analysis2$junienv + analysis2$highenv + analysis2$cl2 + analysis2$cl4, data = analysis2)
summary(r)

r <- lm(analysis2$plan~analysis2$gender + analysis2$parentedu + analysis2$prenv + analysis2$junienv + analysis2$highenv + analysis2$cl2 + analysis2$cl4, data = analysis2)
summary(r)

r <- lm(analysis2$strategy~analysis2$gender + analysis2$parentedu + analysis2$prenv + analysis2$junienv + analysis2$highenv + analysis2$cl2 + analysis2$cl4, data = analysis2)
summary(r)





par(family = "HiraKakuProN-W3")
hist(prlec, breaks=seq(0,10,2), main = "小学校授業", xlab = "小学校授業スコア(0~10)", ylab = "頻度(人)")
hist(junilec,breaks=seq(0,10,2), main = "中学校授業", xlab = "中学校授業スコア(0~10)", ylab = "頻度(人)")
hist(highlec, breaks=seq(0,10,2), main = "高校授業", xlab = "高校授業スコア(0~10)", ylab = "頻度(人)")





