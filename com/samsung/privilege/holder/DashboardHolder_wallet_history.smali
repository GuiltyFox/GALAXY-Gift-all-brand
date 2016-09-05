.class public Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DashboardHolder_wallet_history.java"


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    const v0, 0x7f1001f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;->a:Landroid/view/View;

    .line 33
    const v0, 0x7f100213

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;->b:Landroid/view/View;

    .line 35
    const v0, 0x7f100214

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;->c:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f10013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;->d:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f100215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;->e:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f10017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;->f:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f100216

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;->g:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f100541

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;->h:Landroid/widget/ImageView;

    .line 41
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 45
    return-void
.end method
