.class Lcom/bzbs/marketplace/fragment/ReviewFragment$2;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Lcom/bzbs/marketplace/listener/OnTabItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/ReviewFragment;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$2;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$2;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->g(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(I)Lcom/bzbs/marketplace/model/review/ReviewModel;

    .line 214
    return-void
.end method
