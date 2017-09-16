.class public Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$AgencyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StampDetailGiftActivity.java"


# instance fields
.field a:Landroid/support/v7/widget/CardView;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/LinearLayout;

.field final synthetic h:Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$AgencyViewHolder;->h:Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;

    .line 1463
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1465
    const v0, 0x7f100116

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$AgencyViewHolder;->a:Landroid/support/v7/widget/CardView;

    .line 1466
    const v0, 0x7f1000d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$AgencyViewHolder;->b:Landroid/widget/LinearLayout;

    .line 1467
    const v0, 0x7f1001f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$AgencyViewHolder;->c:Landroid/widget/ImageView;

    .line 1468
    const v0, 0x7f100119

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$AgencyViewHolder;->d:Landroid/widget/TextView;

    .line 1469
    const v0, 0x7f10011a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$AgencyViewHolder;->e:Landroid/widget/TextView;

    .line 1470
    const v0, 0x7f1001f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$AgencyViewHolder;->f:Landroid/widget/TextView;

    .line 1471
    const v0, 0x7f1001f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter$AgencyViewHolder;->g:Landroid/widget/LinearLayout;

    .line 1472
    return-void
.end method
