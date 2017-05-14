.class public final Landroid/support/v4/content/IntentCompat;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# static fields
.field private static final a:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    const/16 v1, 0xf

    if-lt v0, v1, :cond_e

    .line 87
    new-instance v0, Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;

    invoke-direct {v0}, Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;-><init>()V

    sput-object v0, Landroid/support/v4/content/IntentCompat;->a:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    .line 93
    :goto_d
    return-void

    .line 88
    :cond_e
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1a

    .line 89
    new-instance v0, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;

    invoke-direct {v0}, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;-><init>()V

    sput-object v0, Landroid/support/v4/content/IntentCompat;->a:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    goto :goto_d

    .line 91
    :cond_1a
    new-instance v0, Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;

    invoke-direct {v0}, Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/content/IntentCompat;->a:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    goto :goto_d
.end method

.method public static a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 2

    .prologue
    .line 227
    sget-object v0, Landroid/support/v4/content/IntentCompat;->a:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/IntentCompat$IntentCompatImpl;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 2

    .prologue
    .line 272
    sget-object v0, Landroid/support/v4/content/IntentCompat;->a:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/IntentCompat$IntentCompatImpl;->b(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
