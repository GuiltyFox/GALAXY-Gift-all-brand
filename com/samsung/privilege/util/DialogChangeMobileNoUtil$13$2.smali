.class Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$2;
.super Ljava/lang/Object;
.source "DialogChangeMobileNoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;)V
    .registers 2

    .prologue
    .line 432
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$2;->a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$2;->a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 435
    return-void
.end method
