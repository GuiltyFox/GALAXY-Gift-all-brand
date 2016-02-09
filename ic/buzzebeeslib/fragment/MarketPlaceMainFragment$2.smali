.class Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$2;
.super Ljava/lang/Object;
.source "MarketPlaceMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gEtMenuSearch:Landroid/widget/EditText;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gEtMenuSearch:Landroid/widget/EditText;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "keyword":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 221
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 222
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gEtMenuSearch:Landroid/widget/EditText;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 223
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->doFilterSearch(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$17(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Ljava/lang/String;)V

    .line 225
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_46
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->hideRightMenu()V
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    .line 226
    return-void
.end method
