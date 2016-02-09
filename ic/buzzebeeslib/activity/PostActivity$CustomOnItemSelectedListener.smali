.class Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;
.super Ljava/lang/Object;
.source "PostActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/PostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomOnItemSelectedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/PostActivity;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/activity/PostActivity;)V
    .registers 2

    .prologue
    .line 704
    iput-object p1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/PostActivity;Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;)V
    .registers 3

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;-><init>(Lic/buzzebeeslib/activity/PostActivity;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 706
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "selectedText":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    sget v2, Lic/buzzebeeslib/R$string;->post_to_on_your_own_timeline:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 708
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gBtnWithFriend:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$0(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 709
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gLayoutWithFriends:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$1(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 710
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gTvShareWithFriend:Landroid/widget/TextView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$2(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$3(Lic/buzzebeeslib/activity/PostActivity;)Lic/buzzebeeslib/util/async/PostData;

    move-result-object v1

    const-string v2, "me()"

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gUID:Ljava/lang/String;

    .line 721
    :goto_3f
    return-void

    .line 712
    :cond_40
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    sget v2, Lic/buzzebeeslib/R$string;->post_to_on_a_friend_timeline:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 713
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gBtnWithFriend:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$0(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 714
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gLayoutWithFriends:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$1(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 715
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gTvShareWithFriend:Landroid/widget/TextView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$2(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "@Some Friend"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gTvShareWithFriend:Landroid/widget/TextView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$2(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$3(Lic/buzzebeeslib/activity/PostActivity;)Lic/buzzebeeslib/util/async/PostData;

    move-result-object v1

    iput-object v5, v1, Lic/buzzebeeslib/util/async/PostData;->gUID:Ljava/lang/String;

    goto :goto_3f

    .line 719
    :cond_7d
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$3(Lic/buzzebeeslib/activity/PostActivity;)Lic/buzzebeeslib/util/async/PostData;

    move-result-object v1

    iput-object v5, v1, Lic/buzzebeeslib/util/async/PostData;->gUID:Ljava/lang/String;

    goto :goto_3f
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 725
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PostActivity;->access$3(Lic/buzzebeeslib/activity/PostActivity;)Lic/buzzebeeslib/util/async/PostData;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gUID:Ljava/lang/String;

    .line 726
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PostActivity;->access$3(Lic/buzzebeeslib/activity/PostActivity;)Lic/buzzebeeslib/util/async/PostData;

    move-result-object v0

    const-string v1, "me()"

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gUID:Ljava/lang/String;

    .line 727
    return-void
.end method
