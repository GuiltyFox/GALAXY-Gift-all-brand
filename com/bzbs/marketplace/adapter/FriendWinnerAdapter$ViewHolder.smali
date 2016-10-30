.class Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FriendWinnerAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

.field textName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100139
    .end annotation
.end field

.field textReward:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100683
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 93
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;->a:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    .line 94
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 95
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 96
    return-void
.end method


# virtual methods
.method public a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V
    .registers 3

    .prologue
    .line 111
    return-void
.end method

.method public a(ILcom/bzbs/marketplace/model/FriendWinnerModel;)V
    .registers 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;->textReward:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/FriendWinnerModel;->getReward()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter$ViewHolder;->textName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/FriendWinnerModel;->getUser()Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method
