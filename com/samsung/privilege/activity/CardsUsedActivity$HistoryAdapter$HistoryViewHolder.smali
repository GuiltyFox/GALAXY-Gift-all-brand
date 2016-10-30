.class public Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CardsUsedActivity.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field final synthetic h:Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 872
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->h:Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

    .line 873
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 874
    const v0, 0x7f100166

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->a:Landroid/widget/ImageView;

    .line 875
    const v0, 0x7f100167

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/TextView;

    .line 876
    const v0, 0x7f100300

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->c:Landroid/widget/TextView;

    .line 877
    const v0, 0x7f100505

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    .line 878
    const v0, 0x7f1002f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    .line 879
    const v0, 0x7f1002f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    .line 880
    const v0, 0x7f100506

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    .line 881
    return-void
.end method
