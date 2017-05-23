.class Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DashboardAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

.field pagerContainer:Lcom/bzbs/marketplace/control/viewpager/PagerContainer;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10046b
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1002da
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 237
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;->a:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    .line 238
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 239
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 240
    return-void
.end method
