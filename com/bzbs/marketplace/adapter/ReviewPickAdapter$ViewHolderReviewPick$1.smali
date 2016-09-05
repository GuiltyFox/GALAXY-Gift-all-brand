.class Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick$1;
.super Ljava/lang/Object;
.source "ReviewPickAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;->a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/listener/OnTabItemListener;

.field final synthetic b:I

.field final synthetic c:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;Lcom/bzbs/marketplace/listener/OnTabItemListener;I)V
    .registers 4

    .prologue
    .line 94
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick$1;->c:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick$1;->a:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    iput p3, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick$1;->a:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    if-eqz v0, :cond_b

    .line 98
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick$1;->a:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick$1;->b:I

    invoke-interface {v0, p1, v1}, Lcom/bzbs/marketplace/listener/OnTabItemListener;->a(Landroid/view/View;I)V

    .line 99
    :cond_b
    return-void
.end method
