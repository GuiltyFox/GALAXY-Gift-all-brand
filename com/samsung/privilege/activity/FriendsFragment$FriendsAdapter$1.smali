.class Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$1;->this$1:Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$1;->this$1:Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->access$0(Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;)Lcom/samsung/privilege/activity/FriendsFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/FriendsFragment;->doInvite(Landroid/view/View;)V

    .line 589
    return-void
.end method
