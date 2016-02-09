.class Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter$1;
.super Ljava/lang/Object;
.source "MenuMarketBuzzebeesFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;

.field private final synthetic val$etSearch_final:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter$1;->val$etSearch_final:Landroid/widget/EditText;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "tvTextView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->access$0(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;)Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    move-result-object v3

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 174
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter$1;->val$etSearch_final:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 175
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "txtSearch":Ljava/lang/String;
    const/4 v3, 0x3

    if-ne p2, v3, :cond_3b

    .line 177
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 187
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter$1;->this$1:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;

    # getter for: Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;->access$0(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$MenuSlideAdapter;)Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    move-result-object v2

    const-string v3, "Please enter text!"

    # invokes: Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;->access$0(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;Ljava/lang/String;)V

    .line 189
    :cond_3a
    const/4 v2, 0x1

    .line 191
    :cond_3b
    return v2
.end method
