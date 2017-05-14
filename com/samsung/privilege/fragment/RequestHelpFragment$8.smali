.class Lcom/samsung/privilege/fragment/RequestHelpFragment$8;
.super Lpl/aprilapps/easyphotopicker/DefaultCallback;
.source "RequestHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(IILandroid/content/Intent;Ljava/lang/Boolean;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/RequestHelpFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 2

    .prologue
    .line 527
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$8;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-direct {p0}, Lpl/aprilapps/easyphotopicker/DefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 535
    const/16 v0, 0x1f41

    if-eq p3, v0, :cond_9

    const/16 v0, 0x2329

    if-ne p3, v0, :cond_17

    .line 536
    :cond_9
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$8;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 537
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$8;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0, v2, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Lcom/samsung/privilege/fragment/RequestHelpFragment;ZZ)V

    .line 539
    :cond_17
    return-void
.end method

.method public a(Ljava/lang/Exception;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    .registers 4

    .prologue
    .line 531
    return-void
.end method
