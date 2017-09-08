.class Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DashboardImagePagerAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

.field contentViewpager:Landroid/support/v7/widget/CardView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10049f
    .end annotation
.end field

.field imageViewCover:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004a0
    .end annotation
.end field

.field textViewLine:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004a1
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 151
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;->a:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 153
    return-void
.end method
