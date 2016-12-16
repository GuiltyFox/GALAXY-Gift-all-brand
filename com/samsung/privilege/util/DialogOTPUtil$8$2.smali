.class Lcom/samsung/privilege/util/DialogOTPUtil$8$2;
.super Ljava/lang/Object;
.source "DialogOTPUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogOTPUtil$8;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogOTPUtil$8;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogOTPUtil$8;)V
    .registers 2

    .prologue
    .line 293
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$8$2;->a:Lcom/samsung/privilege/util/DialogOTPUtil$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$8$2;->a:Lcom/samsung/privilege/util/DialogOTPUtil$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogOTPUtil$8;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 296
    return-void
.end method
