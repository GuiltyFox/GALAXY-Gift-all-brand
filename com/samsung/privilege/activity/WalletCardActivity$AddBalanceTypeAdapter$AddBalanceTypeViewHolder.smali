.class public Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WalletCardActivity.java"


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;->d:Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;

    .line 1648
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1650
    const v0, 0x7f1000d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;->a:Landroid/widget/LinearLayout;

    .line 1651
    const v0, 0x7f1000cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;->b:Landroid/widget/ImageView;

    .line 1652
    const v0, 0x7f1000da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;->c:Landroid/widget/TextView;

    .line 1653
    return-void
.end method
