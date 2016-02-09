.class Lcom/samsung/privilege/util/NfcUtils$2;
.super Ljava/lang/Object;
.source "NfcUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/NfcUtils;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$objActivityContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/NfcUtils$2;->val$objActivityContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/NfcUtils$2;->val$msg:Ljava/lang/String;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 283
    iget-object v1, p0, Lcom/samsung/privilege/util/NfcUtils$2;->val$objActivityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/NfcUtils$2;->val$msg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 284
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    return-void
.end method
