.class public Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WalletCardActivity.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/support/v7/widget/CardView;

.field d:Landroid/widget/RelativeLayout;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/LinearLayout;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/LinearLayout;

.field final synthetic m:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2635
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->m:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    .line 2636
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2638
    const v0, 0x7f1001f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->a:Landroid/view/View;

    .line 2639
    const v0, 0x7f100224

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->b:Landroid/view/View;

    .line 2641
    const v0, 0x7f10010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->c:Landroid/support/v7/widget/CardView;

    .line 2642
    const v0, 0x7f1000ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->d:Landroid/widget/RelativeLayout;

    .line 2643
    const v0, 0x7f10068c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->e:Landroid/widget/ImageView;

    .line 2644
    const v0, 0x7f10068e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->f:Landroid/widget/LinearLayout;

    .line 2645
    const v0, 0x7f10068f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->g:Landroid/widget/TextView;

    .line 2646
    const v0, 0x7f100690

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->h:Landroid/widget/TextView;

    .line 2647
    const v0, 0x7f100691

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->i:Landroid/widget/TextView;

    .line 2648
    const v0, 0x7f10010d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->j:Landroid/widget/TextView;

    .line 2649
    const v0, 0x7f100105

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->k:Landroid/widget/TextView;

    .line 2650
    const v0, 0x7f100692

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->l:Landroid/widget/LinearLayout;

    .line 2651
    return-void
.end method
