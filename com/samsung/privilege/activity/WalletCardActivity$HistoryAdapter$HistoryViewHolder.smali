.class public Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WalletCardActivity.java"


# instance fields
.field a:Landroid/support/v7/widget/CardView;

.field b:Landroid/widget/RelativeLayout;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/RelativeLayout;

.field i:Landroid/widget/ImageView;

.field final synthetic j:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->j:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    .line 1467
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1468
    const v0, 0x7f10010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->a:Landroid/support/v7/widget/CardView;

    .line 1469
    const v0, 0x7f1000ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    .line 1470
    const v0, 0x7f100215

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->c:Landroid/widget/ImageView;

    .line 1471
    const v0, 0x7f10013a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    .line 1472
    const v0, 0x7f100216

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    .line 1473
    const v0, 0x7f10017a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    .line 1474
    const v0, 0x7f100217

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/TextView;

    .line 1475
    const v0, 0x7f100218

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->h:Landroid/widget/RelativeLayout;

    .line 1476
    const v0, 0x7f100219

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    .line 1477
    return-void
.end method
