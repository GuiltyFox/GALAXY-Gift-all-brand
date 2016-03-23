.class Landroid/support/v8/renderscript/SamplerThunker;
.super Landroid/support/v8/renderscript/Sampler;
.source "SamplerThunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/SamplerThunker$1;,
        Landroid/support/v8/renderscript/SamplerThunker$Builder;
    }
.end annotation


# instance fields
.field mN:Landroid/renderscript/Sampler;


# direct methods
.method protected constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/Sampler;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 38
    return-void
.end method

.method static convertValue(Landroid/support/v8/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;
    .registers 3
    .param p0, "v"    # Landroid/support/v8/renderscript/Sampler$Value;

    .prologue
    .line 45
    sget-object v0, Landroid/support/v8/renderscript/SamplerThunker$1;->$SwitchMap$android$support$v8$renderscript$Sampler$Value:[I

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Sampler$Value;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 61
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 47
    :pswitch_d
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    goto :goto_c

    .line 49
    :pswitch_10
    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    goto :goto_c

    .line 51
    :pswitch_13
    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    goto :goto_c

    .line 53
    :pswitch_16
    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    goto :goto_c

    .line 55
    :pswitch_19
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    goto :goto_c

    .line 57
    :pswitch_1c
    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    goto :goto_c

    .line 59
    :pswitch_1f
    sget-object v0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    goto :goto_c

    .line 45
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/v8/renderscript/SamplerThunker;->mN:Landroid/renderscript/Sampler;

    return-object v0
.end method