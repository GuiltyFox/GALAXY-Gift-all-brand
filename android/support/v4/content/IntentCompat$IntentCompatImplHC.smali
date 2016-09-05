.class Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;
.super Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;
.source "IntentCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3

    .prologue
    .line 68
    invoke-static {p1}, Landroid/support/v4/content/IntentCompatHoneycomb;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
