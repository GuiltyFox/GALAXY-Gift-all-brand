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
    .line 877
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->h:Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

    .line 878
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 879
    const v0, 0x7f100168

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->a:Landroid/widget/ImageView;

    .line 880
    const v0, 0x7f100169

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/TextView;

    .line 881
    const v0, 0x7f10032b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->c:Landroid/widget/TextView;

    .line 882
    const v0, 0x7f100530

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    .line 883
    const v0, 0x7f100324

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    .line 884
    const v0, 0x7f100320

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    .line 885
    const v0, 0x7f100531

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    .line 886
    return-void
.end method
