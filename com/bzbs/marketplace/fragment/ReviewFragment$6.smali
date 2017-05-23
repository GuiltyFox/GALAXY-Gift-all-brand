.class Lcom/bzbs/marketplace/fragment/ReviewFragment$6;
.super Lpl/aprilapps/easyphotopicker/DefaultCallback;
.source "ReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(IILandroid/content/Intent;Ljava/lang/Boolean;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 2

    .prologue
    .line 331
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$6;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-direct {p0}, Lpl/aprilapps/easyphotopicker/DefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 339
    const/16 v0, 0x1f41

    if-eq p3, v0, :cond_9

    const/16 v0, 0x2329

    if-ne p3, v0, :cond_17

    .line 340
    :cond_9
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$6;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->c(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$6;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0, v2, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;ZZ)V

    .line 343
    :cond_17
    return-void
.end method

.method public a(Ljava/lang/Exception;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    .registers 4

    .prologue
    .line 335
    return-void
.end method
