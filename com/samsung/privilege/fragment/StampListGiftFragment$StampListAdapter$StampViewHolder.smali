.class public Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StampListGiftFragment.java"


# instance fields
.field a:Landroid/support/v7/widget/CardView;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/LinearLayout;

.field final synthetic h:Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 497
    iput-object p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->h:Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    .line 498
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 500
    const v0, 0x7f100116

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->a:Landroid/support/v7/widget/CardView;

    .line 501
    const v0, 0x7f1000d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->b:Landroid/widget/LinearLayout;

    .line 502
    const v0, 0x7f1001f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->c:Landroid/widget/ImageView;

    .line 503
    const v0, 0x7f100119

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->d:Landroid/widget/TextView;

    .line 504
    const v0, 0x7f10011a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->e:Landroid/widget/TextView;

    .line 505
    const v0, 0x7f1001f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->f:Landroid/widget/TextView;

    .line 506
    const v0, 0x7f1001f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->g:Landroid/widget/LinearLayout;

    .line 507
    return-void
.end method
