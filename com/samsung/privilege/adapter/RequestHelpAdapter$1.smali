.class Lcom/samsung/privilege/adapter/RequestHelpAdapter$1;
.super Ljava/lang/Object;
.source "RequestHelpAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/adapter/RequestHelpAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/privilege/adapter/RequestHelpAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/adapter/RequestHelpAdapter;Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;I)V
    .registers 4

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$1;->c:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$1;->a:Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;

    iput p3, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$1;->a:Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;

    iget v1, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$1;->b:I

    iget-object v2, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$1;->c:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    iget v3, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$1;->b:I

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(I)Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->a(ILcom/bzbs/marketplace/model/review/ReviewModel;)V

    .line 79
    return-void
.end method
