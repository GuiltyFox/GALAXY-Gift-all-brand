.class Lic/buzzebeeslib/fragment/PlaceListFragment$4$5;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$5;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 600
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 601
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$5;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 602
    return-void
.end method
