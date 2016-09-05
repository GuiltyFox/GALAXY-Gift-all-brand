.class public Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;
.super Ljava/lang/Object;
.source "ReviewGiftSurveyRowModel.java"


# instance fields
.field private id:I

.field private text_en:Ljava/lang/String;

.field private text_th:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;->id:I

    return v0
.end method

.method public getText_en()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;->text_en:Ljava/lang/String;

    return-object v0
.end method

.method public getText_th()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;->text_th:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .registers 2

    .prologue
    .line 57
    iput p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;->id:I

    .line 58
    return-void
.end method

.method public setText_en(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;->text_en:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setText_th(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;->text_th:Ljava/lang/String;

    .line 62
    return-void
.end method
