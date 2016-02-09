.class Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$1;
.super Ljava/lang/Object;
.source "MarketPlaceList2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_9

    .line 241
    :cond_8
    :goto_8
    return-void

    .line 237
    :cond_9
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lic/buzzebeeslib/activity/BaseSlidingActivity;

    if-eqz v1, :cond_8

    .line 238
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/activity/BaseSlidingActivity;

    .line 239
    .local v0, "ra":Lic/buzzebeeslib/activity/BaseSlidingActivity;
    invoke-virtual {v0}, Lic/buzzebeeslib/activity/BaseSlidingActivity;->ShowSlidingMenu()V

    goto :goto_8
.end method
