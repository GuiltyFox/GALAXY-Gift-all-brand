.class Lcom/samsung/privilege/util/DialogProfile$6$2;
.super Ljava/lang/Object;
.source "DialogProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogProfile$6;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogProfile$6;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogProfile$6;)V
    .registers 2

    .prologue
    .line 557
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogProfile$6$2;->a:Lcom/samsung/privilege/util/DialogProfile$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 560
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 561
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$6$2;->a:Lcom/samsung/privilege/util/DialogProfile$6;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$6;->b:Landroid/app/Dialog;

    const v1, 0x7f100432

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    return-void
.end method
