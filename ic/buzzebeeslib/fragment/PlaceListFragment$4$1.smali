.class Lic/buzzebeeslib/fragment/PlaceListFragment$4$1;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$1;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 513
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$1;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gTvLoadingPage:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$3(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 514
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$1;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gTvLoadingPage:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$3(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$1;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->place_message_get_location_1:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$1;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gTvLoadingPage:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$3(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$4$1;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment$4;)Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gPbLoadingPage:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$4(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 519
    :cond_40
    return-void
.end method
