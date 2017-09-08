.class Lcom/bzbs/marketplace/fragment/ReviewFragment$10;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Lit/sephiroth/android/library/widget/AdapterView$OnItemClickListener;


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
    .line 620
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/sephiroth/android/library/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 623
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AdapterView;->getId()I

    move-result v0

    const v1, 0x7f100503

    if-ne v0, v1, :cond_19

    .line 624
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->p(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;->a(I)V

    .line 625
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 627
    :cond_19
    return-void
.end method
