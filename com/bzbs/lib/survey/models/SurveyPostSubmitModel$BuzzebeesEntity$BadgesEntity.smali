.class public Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;
.super Ljava/lang/Object;
.source "SurveyPostSubmitModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadgesEntity"
.end annotation


# instance fields
.field private IsSkipNoti:Z

.field private auto_redeem:Ljava/lang/Object;

.field private description:Ljava/lang/String;

.field private fb_description:Ljava/lang/Object;

.field private id:Ljava/lang/String;

.field private level:I

.field private name:Ljava/lang/String;

.field private points:I

.field private unlocked_by_others:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuto_redeem()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->auto_redeem:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFb_description()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->fb_description:Ljava/lang/Object;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 343
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->level:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()I
    .registers 2

    .prologue
    .line 347
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->points:I

    return v0
.end method

.method public isIsSkipNoti()Z
    .registers 2

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->IsSkipNoti:Z

    return v0
.end method

.method public isUnlocked_by_others()Z
    .registers 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->unlocked_by_others:Z

    return v0
.end method

.method public setAuto_redeem(Ljava/lang/Object;)V
    .registers 2
    .param p1, "auto_redeem"    # Ljava/lang/Object;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->auto_redeem:Ljava/lang/Object;

    .line 320
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->description:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setFb_description(Ljava/lang/Object;)V
    .registers 2
    .param p1, "fb_description"    # Ljava/lang/Object;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->fb_description:Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->id:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setIsSkipNoti(Z)V
    .registers 2
    .param p1, "IsSkipNoti"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->IsSkipNoti:Z

    .line 332
    return-void
.end method

.method public setLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 307
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->level:I

    .line 308
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->name:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setPoints(I)V
    .registers 2
    .param p1, "points"    # I

    .prologue
    .line 311
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->points:I

    .line 312
    return-void
.end method

.method public setUnlocked_by_others(Z)V
    .registers 2
    .param p1, "unlocked_by_others"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;->unlocked_by_others:Z

    .line 316
    return-void
.end method
