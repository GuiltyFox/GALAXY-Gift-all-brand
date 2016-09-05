.class Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;
.super Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;
.source "ViewConfigurationCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/ViewConfiguration;)Z
    .registers 3

    .prologue
    .line 77
    invoke-static {p1}, Landroid/support/v4/view/ViewConfigurationCompatICS;->a(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
