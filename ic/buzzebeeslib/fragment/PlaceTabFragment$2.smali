.class Lic/buzzebeeslib/fragment/PlaceTabFragment$2;
.super Ljava/lang/Object;
.source "PlaceTabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceTabFragment;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    # getter for: Lic/buzzebeeslib/fragment/PlaceTabFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick imgDeleteTextSearch"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceTabFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceTabFragment;->etTextSearch:Landroid/widget/EditText;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->access$2(Lic/buzzebeeslib/fragment/PlaceTabFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceTabFragment;

    # invokes: Lic/buzzebeeslib/fragment/PlaceTabFragment;->replaceListFragment()V
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->access$1(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V

    .line 182
    return-void
.end method
