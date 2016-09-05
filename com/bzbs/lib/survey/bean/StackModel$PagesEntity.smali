.class public Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
.super Ljava/lang/Object;
.source "StackModel.java"


# instance fields
.field a:Z

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->a:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->b:I

    .line 48
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->c:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method public b()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->c:Ljava/util/ArrayList;

    return-object v0
.end method
