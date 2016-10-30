.class Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

.field contentViewpager:Landroid/support/v7/widget/CardView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100621
    .end annotation
.end field

.field imageViewCover:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100622
    .end annotation
.end field

.field textViewLine:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100623
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 251
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;->a:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 253
    return-void
.end method
