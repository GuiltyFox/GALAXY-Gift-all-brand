.class public Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;
.super Ljava/lang/Object;
.source "SurveyPostSubmitModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuzzebeesEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;,
        Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$UpdatedPointsEntity;
    }
.end annotation


# instance fields
.field private badges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private points:I

.field private updated_points:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$UpdatedPointsEntity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadges()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;->badges:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;->points:I

    return v0
.end method

.method public getUpdated_points()Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$UpdatedPointsEntity;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$UpdatedPointsEntity;

    return-object v0
.end method

.method public setBadges(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "badges":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$BadgesEntity;>;"
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;->badges:Ljava/util/List;

    .line 248
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;->description:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setPoints(I)V
    .registers 2
    .param p1, "points"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;->points:I

    .line 236
    return-void
.end method

.method public setUpdated_points(Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$UpdatedPointsEntity;)V
    .registers 2
    .param p1, "updated_points"    # Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$UpdatedPointsEntity;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$UpdatedPointsEntity;

    .line 240
    return-void
.end method
