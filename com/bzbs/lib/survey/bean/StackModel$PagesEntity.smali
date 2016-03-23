.class public Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
.super Ljava/lang/Object;
.source "StackModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/bean/StackModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PagesEntity"
.end annotation


# instance fields
.field private listStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private page:I

.field radio:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->radio:Z

    return-void
.end method


# virtual methods
.method public getListStack()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->listStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPage()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->page:I

    return v0
.end method

.method public isRadio()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->radio:Z

    return v0
.end method

.method public setListStack(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "listStack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->listStack:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method public setPage(I)V
    .registers 2
    .param p1, "page"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->page:I

    .line 48
    return-void
.end method

.method public setRadio(Z)V
    .registers 2
    .param p1, "radio"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->radio:Z

    .line 64
    return-void
.end method
