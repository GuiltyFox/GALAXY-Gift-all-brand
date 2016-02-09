.class Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$1;
.super Ljava/lang/Object;
.source "MarketPlaceMainFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_a

    .line 194
    sparse-switch p2, :sswitch_data_48

    .line 210
    :cond_a
    :goto_a
    return v2

    .line 197
    :sswitch_b
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gEtMenuSearch:Landroid/widget/EditText;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "keyword":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 199
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 200
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gEtMenuSearch:Landroid/widget/EditText;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 202
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->doFilterSearch(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$17(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Ljava/lang/String;)V

    .line 205
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_45
    const/4 v2, 0x1

    goto :goto_a

    .line 194
    nop

    :sswitch_data_48
    .sparse-switch
        0x17 -> :sswitch_b
        0x42 -> :sswitch_b
    .end sparse-switch
.end method
