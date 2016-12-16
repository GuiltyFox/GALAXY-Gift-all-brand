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
    .line 1923
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->j:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    .line 1924
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1925
    const v0, 0x7f10010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->a:Landroid/support/v7/widget/CardView;

    .line 1926
    const v0, 0x7f1000ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    .line 1927
    const v0, 0x7f100225

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->c:Landroid/widget/ImageView;

    .line 1928
    const v0, 0x7f10013a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    .line 1929
    const v0, 0x7f100226

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    .line 1930
    const v0, 0x7f10017a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    .line 1931
    const v0, 0x7f100227

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/TextView;

    .line 1932
    const v0, 0x7f100228

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->h:Landroid/widget/RelativeLayout;

    .line 1933
    const v0, 0x7f100229

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    .line 1934
    return-void
.end method
