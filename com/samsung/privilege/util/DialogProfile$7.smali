.class final Lcom/samsung/privilege/util/DialogProfile$7;
.super Ljava/lang/Object;
.source "DialogProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogProfile;->b(Ljava/lang/String;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 575
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogProfile$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 578
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogProfile$7;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 580
    return-void
.end method
