.class final Lcom/samsung/privilege/util/DialogOTPUtil$11;
.super Ljava/lang/Object;
.source "DialogOTPUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogOTPUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 497
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$11;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$11;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$11;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$11;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 502
    return-void
.end method
