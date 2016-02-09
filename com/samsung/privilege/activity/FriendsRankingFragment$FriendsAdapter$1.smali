.class Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$1;
.super Ljava/lang/Object;
.source "FriendsRankingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$1;->this$1:Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->access$0(Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;)Lcom/samsung/privilege/activity/FriendsRankingFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->doInvite(Landroid/view/View;)V

    .line 686
    return-void
.end method
