.class Lic/buzzebeeslib/fragment/PlaceTabFragment$1;
.super Ljava/lang/Object;
.source "PlaceTabFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceTabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/PlaceTabFragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceTabFragment;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 160
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 161
    sparse-switch p2, :sswitch_data_1c

    .line 172
    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 164
    :sswitch_b
    # getter for: Lic/buzzebeeslib/fragment/PlaceTabFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick etTextSearch"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceTabFragment;

    # invokes: Lic/buzzebeeslib/fragment/PlaceTabFragment;->replaceListFragment()V
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->access$1(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V

    .line 167
    const/4 v0, 0x1

    goto :goto_a

    .line 161
    nop

    :sswitch_data_1c
    .sparse-switch
        0x17 -> :sswitch_b
        0x42 -> :sswitch_b
    .end sparse-switch
.end method
