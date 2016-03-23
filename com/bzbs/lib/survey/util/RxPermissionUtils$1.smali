.class Lcom/bzbs/lib/survey/util/RxPermissionUtils$1;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/RxPermissionUtils;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$1;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$1;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    # invokes: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request()V
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$700(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V

    .line 55
    return-void
.end method
