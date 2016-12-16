.class public Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DashboardGiftRecyclerFragment.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field final synthetic e:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1827
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;->e:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    .line 1828
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1829
    const v0, 0x7f1001f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;->a:Landroid/view/View;

    .line 1830
    const v0, 0x7f100224

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;->b:Landroid/view/View;

    .line 1832
    const v0, 0x7f100531

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;->c:Landroid/widget/ImageView;

    .line 1833
    const v0, 0x7f100532

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;->d:Landroid/widget/TextView;

    .line 1834
    return-void
.end method
