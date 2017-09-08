.class Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$3;
.super Ljava/lang/Object;
.source "RequestHelpAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/listener/OnTabItemListener;

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;Lcom/bzbs/marketplace/listener/OnTabItemListener;I)V
    .registers 4

    .prologue
    .line 192
    iput-object p1, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$3;->c:Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;

    iput-object p2, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$3;->a:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    iput p3, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$3;->a:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    if-eqz v0, :cond_b

    .line 196
    iget-object v0, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$3;->a:Lcom/bzbs/marketplace/listener/OnTabItemListener;

    iget v1, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$3;->b:I

    invoke-interface {v0, p1, v1}, Lcom/bzbs/marketplace/listener/OnTabItemListener;->a(Landroid/view/View;I)V

    .line 197
    :cond_b
    return-void
.end method
