.class public Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HistoryEWalletListActivity.java"


# instance fields
.field a:Landroid/support/v7/widget/CardView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field final synthetic g:Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 525
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->g:Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;

    .line 526
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 527
    const v0, 0x7f10010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->a:Landroid/support/v7/widget/CardView;

    .line 528
    const v0, 0x7f10017a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/ImageView;

    .line 529
    const v0, 0x7f10013c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->c:Landroid/widget/TextView;

    .line 530
    const v0, 0x7f10013b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    .line 531
    const v0, 0x7f10017b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    .line 532
    const v0, 0x7f10017c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    .line 533
    return-void
.end method
