.class public Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DashboardGiftRecyclerFragment.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/support/v7/widget/CardView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/view/View;

.field l:Landroid/widget/LinearLayout;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field final synthetic o:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1988
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->o:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    .line 1989
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1990
    const v0, 0x7f1001f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->a:Landroid/view/View;

    .line 1991
    const v0, 0x7f100224

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->b:Landroid/view/View;

    .line 1993
    const v0, 0x7f10010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->c:Landroid/support/v7/widget/CardView;

    .line 1995
    const v0, 0x7f100148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->d:Landroid/widget/ImageView;

    .line 1996
    const v0, 0x7f100521

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->e:Landroid/widget/ImageView;

    .line 1997
    const v0, 0x7f100285

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->f:Landroid/widget/ImageView;

    .line 1998
    const v0, 0x7f100523

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->g:Landroid/widget/LinearLayout;

    .line 1999
    const v0, 0x7f100524

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->h:Landroid/widget/TextView;

    .line 2000
    const v0, 0x7f100525

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->i:Landroid/widget/TextView;

    .line 2001
    const v0, 0x7f10030d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->j:Landroid/widget/TextView;

    .line 2003
    const v0, 0x7f100522

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->k:Landroid/view/View;

    .line 2005
    const v0, 0x7f100526

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->l:Landroid/widget/LinearLayout;

    .line 2006
    const v0, 0x7f100527

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->m:Landroid/widget/TextView;

    .line 2007
    const v0, 0x7f100528

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->n:Landroid/widget/TextView;

    .line 2008
    return-void
.end method
