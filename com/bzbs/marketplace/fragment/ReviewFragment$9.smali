.class Lcom/bzbs/marketplace/fragment/ReviewFragment$9;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/ReviewFragment;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 2

    .prologue
    .line 604
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$9;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 617
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .prologue
    .line 607
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$9;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->p(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->a(I)V

    .line 612
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$9;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listViewHorizontal:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/HListView;->c(I)V

    .line 613
    return-void
.end method
