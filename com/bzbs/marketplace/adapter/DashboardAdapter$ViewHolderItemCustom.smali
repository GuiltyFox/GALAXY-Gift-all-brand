.class Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DashboardAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

.field contentLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100621
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 260
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;->a:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    .line 261
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 262
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 263
    return-void
.end method
