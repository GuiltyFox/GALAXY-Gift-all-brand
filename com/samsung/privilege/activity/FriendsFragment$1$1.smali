.class Lcom/samsung/privilege/activity/FriendsFragment$1$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/FriendsFragment$1;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/FriendsFragment$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/FriendsFragment$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsFragment$1$1;->this$1:Lcom/samsung/privilege/activity/FriendsFragment$1;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$1$1;->this$1:Lcom/samsung/privilege/activity/FriendsFragment$1;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment$1;->access$0(Lcom/samsung/privilege/activity/FriendsFragment$1;)Lcom/samsung/privilege/activity/FriendsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/FriendsFragment$1$1;->this$1:Lcom/samsung/privilege/activity/FriendsFragment$1;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment$1;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;
    invoke-static {v1}, Lcom/samsung/privilege/activity/FriendsFragment$1;->access$0(Lcom/samsung/privilege/activity/FriendsFragment$1;)Lcom/samsung/privilege/activity/FriendsFragment;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gListOffset:I
    invoke-static {v1}, Lcom/samsung/privilege/activity/FriendsFragment;->access$4(Lcom/samsung/privilege/activity/FriendsFragment;)I

    move-result v1

    # invokes: Lcom/samsung/privilege/activity/FriendsFragment;->getFriends(I)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/FriendsFragment;->access$11(Lcom/samsung/privilege/activity/FriendsFragment;I)V

    .line 153
    return-void
.end method
