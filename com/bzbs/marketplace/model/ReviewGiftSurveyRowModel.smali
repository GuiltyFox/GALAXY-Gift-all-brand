.class public Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;
.super Ljava/lang/Object;
.source "ReviewGiftSurveyRowModel.java"


# instance fields
.field private answer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;",
            ">;"
        }
    .end annotation
.end field

.field private subject_en:Ljava/lang/String;

.field private subject_th:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswer()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;->answer:Ljava/util/List;

    return-object v0
.end method

.method public getSubject_en()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;->subject_en:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject_th()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;->subject_th:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswer(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;->answer:Ljava/util/List;

    .line 37
    return-void
.end method

.method public setSubject_en(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;->subject_en:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSubject_th(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;->subject_th:Ljava/lang/String;

    .line 29
    return-void
.end method
