
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	94013103          	ld	sp,-1728(sp) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x58>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7c0050ef          	jal	ra,800057dc <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	550030ef          	jal	ra,800045d8 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001218:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000121c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001220:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001224:	0085b083          	ld	ra,8(a1)

    ret
    80001228:	00008067          	ret

000000008000122c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000122c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001230:	00853083          	ld	ra,8(a0)

    80001234:	00008067          	ret

0000000080001238 <_Z22thread_dispatch_kernelv>:
//
#include "../../h/syscall_c_kernel.hpp"


void thread_dispatch_kernel()
{
    80001238:	ff010113          	addi	sp,sp,-16
    8000123c:	00813423          	sd	s0,8(sp)
    80001240:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001244:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall
}
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001264:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80001268:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000126c:	00050513          	mv	a0,a0
    return (char)result;
}
    80001270:	0ff57513          	andi	a0,a0,255
    80001274:	00813403          	ld	s0,8(sp)
    80001278:	01010113          	addi	sp,sp,16
    8000127c:	00008067          	ret

0000000080001280 <_Z18thread_exit_kernelv>:


int thread_exit_kernel()
{
    80001280:	ff010113          	addi	sp,sp,-16
    80001284:	00813423          	sd	s0,8(sp)
    80001288:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000128c:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001290:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001294:	00050513          	mv	a0,a0
    return result;
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;
static kmem_cache_t* cacheOfSlabs = nullptr;
//helping functions
void strcpy(const char* src, char* dst)
{
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    800012b4:	00054783          	lbu	a5,0(a0)
    800012b8:	00078a63          	beqz	a5,800012cc <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    800012bc:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    800012c0:	00150513          	addi	a0,a0,1
    800012c4:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    800012c8:	fedff06f          	j	800012b4 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    800012cc:	00f58023          	sb	a5,0(a1)
}
    800012d0:	00813403          	ld	s0,8(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    800012dc:	fd010113          	addi	sp,sp,-48
    800012e0:	02113423          	sd	ra,40(sp)
    800012e4:	02813023          	sd	s0,32(sp)
    800012e8:	00913c23          	sd	s1,24(sp)
    800012ec:	01213823          	sd	s2,16(sp)
    800012f0:	01313423          	sd	s3,8(sp)
    800012f4:	01413023          	sd	s4,0(sp)
    800012f8:	03010413          	addi	s0,sp,48
    if(*slab == nullptr) return 0;
    800012fc:	00053783          	ld	a5,0(a0)
    80001300:	02078c63          	beqz	a5,80001338 <_Z17destroy_slab_listPP6slab_s+0x5c>
    80001304:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    80001308:	0107b783          	ld	a5,16(a5)
    8000130c:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    80001310:	00000913          	li	s2,0
    while(*slab != nullptr)
    80001314:	0004b503          	ld	a0,0(s1)
    80001318:	02050263          	beqz	a0,8000133c <_Z17destroy_slab_listPP6slab_s+0x60>
    {
        slab_t* nextSlab = (*slab)->next;
    8000131c:	00853a03          	ld	s4,8(a0)
        buddy_free(*slab, sz);
    80001320:	00098593          	mv	a1,s3
    80001324:	00002097          	auipc	ra,0x2
    80001328:	e7c080e7          	jalr	-388(ra) # 800031a0 <_Z10buddy_freePvm>
        *slab = nextSlab;
    8000132c:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    80001330:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    80001334:	fe1ff06f          	j	80001314 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(*slab == nullptr) return 0;
    80001338:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    8000133c:	00090513          	mv	a0,s2
    80001340:	02813083          	ld	ra,40(sp)
    80001344:	02013403          	ld	s0,32(sp)
    80001348:	01813483          	ld	s1,24(sp)
    8000134c:	01013903          	ld	s2,16(sp)
    80001350:	00813983          	ld	s3,8(sp)
    80001354:	00013a03          	ld	s4,0(sp)
    80001358:	03010113          	addi	sp,sp,48
    8000135c:	00008067          	ret

0000000080001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    80001360:	fc010113          	addi	sp,sp,-64
    80001364:	02113c23          	sd	ra,56(sp)
    80001368:	02813823          	sd	s0,48(sp)
    8000136c:	02913423          	sd	s1,40(sp)
    80001370:	03213023          	sd	s2,32(sp)
    80001374:	01313c23          	sd	s3,24(sp)
    80001378:	01413823          	sd	s4,16(sp)
    8000137c:	01513423          	sd	s5,8(sp)
    80001380:	04010413          	addi	s0,sp,64
    80001384:	00050493          	mv	s1,a0
    80001388:	00058513          	mv	a0,a1
    8000138c:	00060a93          	mv	s5,a2
    80001390:	00068a13          	mv	s4,a3
    80001394:	00070993          	mv	s3,a4
    80001398:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    8000139c:	00048593          	mv	a1,s1
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	f08080e7          	jalr	-248(ra) # 800012a8 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    800013a8:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    800013ac:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    800013b0:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    800013b4:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    800013b8:	0404b423          	sd	zero,72(s1)
    800013bc:	0404b823          	sd	zero,80(s1)
    800013c0:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    800013c4:	0604ac23          	sw	zero,120(s1)
}
    800013c8:	03813083          	ld	ra,56(sp)
    800013cc:	03013403          	ld	s0,48(sp)
    800013d0:	02813483          	ld	s1,40(sp)
    800013d4:	02013903          	ld	s2,32(sp)
    800013d8:	01813983          	ld	s3,24(sp)
    800013dc:	01013a03          	ld	s4,16(sp)
    800013e0:	00813a83          	ld	s5,8(sp)
    800013e4:	04010113          	addi	sp,sp,64
    800013e8:	00008067          	ret

00000000800013ec <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013ec:	fe010113          	addi	sp,sp,-32
    800013f0:	00113c23          	sd	ra,24(sp)
    800013f4:	00813823          	sd	s0,16(sp)
    800013f8:	00913423          	sd	s1,8(sp)
    800013fc:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    80001400:	12050493          	addi	s1,a0,288

    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001404:	00000793          	li	a5,0
    80001408:	0140006f          	j	8000141c <_Z19slab_allocator_initP14buddyAllocator+0x30>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    8000140c:	00379713          	slli	a4,a5,0x3
    80001410:	00e50733          	add	a4,a0,a4
    80001414:	12073023          	sd	zero,288(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001418:	00178793          	addi	a5,a5,1
    8000141c:	00c00713          	li	a4,12
    80001420:	fef776e3          	bgeu	a4,a5,8000140c <_Z19slab_allocator_initP14buddyAllocator+0x20>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    80001424:	00000793          	li	a5,0
    80001428:	00000713          	li	a4,0
    8000142c:	08000693          	li	a3,128
    80001430:	00200613          	li	a2,2
    80001434:	00007597          	auipc	a1,0x7
    80001438:	bec58593          	addi	a1,a1,-1044 # 80008020 <CONSOLE_STATUS+0x10>
    8000143c:	18850513          	addi	a0,a0,392
    80001440:	00000097          	auipc	ra,0x0
    80001444:	f20080e7          	jalr	-224(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001448:	00048513          	mv	a0,s1
    8000144c:	01813083          	ld	ra,24(sp)
    80001450:	01013403          	ld	s0,16(sp)
    80001454:	00813483          	ld	s1,8(sp)
    80001458:	02010113          	addi	sp,sp,32
    8000145c:	00008067          	ret

0000000080001460 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000146c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001470:	01d7d79b          	srliw	a5,a5,0x1d
    80001474:	00b785bb          	addw	a1,a5,a1
    80001478:	4035d71b          	sraiw	a4,a1,0x3
    8000147c:	00e50533          	add	a0,a0,a4
    80001480:	03054503          	lbu	a0,48(a0)
    80001484:	0075f593          	andi	a1,a1,7
    80001488:	40f585bb          	subw	a1,a1,a5
    8000148c:	40b5553b          	sraw	a0,a0,a1
}
    80001490:	00157513          	andi	a0,a0,1
    80001494:	00813403          	ld	s0,8(sp)
    80001498:	01010113          	addi	sp,sp,16
    8000149c:	00008067          	ret

00000000800014a0 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    800014a0:	ff010113          	addi	sp,sp,-16
    800014a4:	00813423          	sd	s0,8(sp)
    800014a8:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    800014ac:	41f5d79b          	sraiw	a5,a1,0x1f
    800014b0:	01d7d79b          	srliw	a5,a5,0x1d
    800014b4:	00b785bb          	addw	a1,a5,a1
    800014b8:	4035d71b          	sraiw	a4,a1,0x3
    800014bc:	00e50533          	add	a0,a0,a4
    800014c0:	03050703          	lb	a4,48(a0)
    800014c4:	0075f593          	andi	a1,a1,7
    800014c8:	40f585bb          	subw	a1,a1,a5
    800014cc:	00100793          	li	a5,1
    800014d0:	00b795bb          	sllw	a1,a5,a1
    800014d4:	00b765b3          	or	a1,a4,a1
    800014d8:	02b50823          	sb	a1,48(a0)
}
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014e8:	fd010113          	addi	sp,sp,-48
    800014ec:	02113423          	sd	ra,40(sp)
    800014f0:	02813023          	sd	s0,32(sp)
    800014f4:	00913c23          	sd	s1,24(sp)
    800014f8:	01213823          	sd	s2,16(sp)
    800014fc:	01313423          	sd	s3,8(sp)
    80001500:	03010413          	addi	s0,sp,48
    80001504:	00050913          	mv	s2,a0
    if(slab == nullptr)
    80001508:	08050863          	beqz	a0,80001598 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    8000150c:	00000493          	li	s1,0
    80001510:	01893783          	ld	a5,24(s2)
    80001514:	02f4fe63          	bgeu	s1,a5,80001550 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    80001518:	0004899b          	sext.w	s3,s1
    8000151c:	00098593          	mv	a1,s3
    80001520:	00090513          	mv	a0,s2
    80001524:	00000097          	auipc	ra,0x0
    80001528:	f3c080e7          	jalr	-196(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    8000152c:	00050663          	beqz	a0,80001538 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001530:	00148493          	addi	s1,s1,1
    80001534:	fddff06f          	j	80001510 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab->startAddr + i*slab->owner->obj_size);
    80001538:	02893783          	ld	a5,40(s2)
    8000153c:	01093703          	ld	a4,16(s2)
    80001540:	06073703          	ld	a4,96(a4)
    80001544:	029704b3          	mul	s1,a4,s1
    80001548:	009784b3          	add	s1,a5,s1
            index = i;
            break;
    8000154c:	00c0006f          	j	80001558 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001550:	00000493          	li	s1,0
    int index = -1;
    80001554:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001558:	02048063          	beqz	s1,80001578 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    setAllocatedIndex(slab, index);
    8000155c:	00098593          	mv	a1,s3
    80001560:	00090513          	mv	a0,s2
    80001564:	00000097          	auipc	ra,0x0
    80001568:	f3c080e7          	jalr	-196(ra) # 800014a0 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000156c:	02093783          	ld	a5,32(s2)
    80001570:	00178793          	addi	a5,a5,1
    80001574:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001578:	00048513          	mv	a0,s1
    8000157c:	02813083          	ld	ra,40(sp)
    80001580:	02013403          	ld	s0,32(sp)
    80001584:	01813483          	ld	s1,24(sp)
    80001588:	01013903          	ld	s2,16(sp)
    8000158c:	00813983          	ld	s3,8(sp)
    80001590:	03010113          	addi	sp,sp,48
    80001594:	00008067          	ret
        return nullptr;
    80001598:	00050493          	mv	s1,a0
    8000159c:	fddff06f          	j	80001578 <_Z14allocateObjectP6slab_s+0x90>

00000000800015a0 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00813423          	sd	s0,8(sp)
    800015a8:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800015ac:	02053783          	ld	a5,32(a0)
    800015b0:	01853503          	ld	a0,24(a0)
    800015b4:	40f50533          	sub	a0,a0,a5
}
    800015b8:	00153513          	seqz	a0,a0
    800015bc:	00813403          	ld	s0,8(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret

00000000800015c8 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00813423          	sd	s0,8(sp)
    800015d0:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    800015d4:	02053503          	ld	a0,32(a0)
}
    800015d8:	00153513          	seqz	a0,a0
    800015dc:	00813403          	ld	s0,8(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00813423          	sd	s0,8(sp)
    800015f0:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    800015f4:	00050e63          	beqz	a0,80001610 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    800015f8:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    800015fc:	0005b783          	ld	a5,0(a1)
    80001600:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    80001604:	00078463          	beqz	a5,8000160c <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    80001608:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    8000160c:	00a5b023          	sd	a0,0(a1)
}
    80001610:	00813403          	ld	s0,8(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret

000000008000161c <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    8000161c:	ff010113          	addi	sp,sp,-16
    80001620:	00813423          	sd	s0,8(sp)
    80001624:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    80001628:	00053783          	ld	a5,0(a0)
    8000162c:	02078663          	beqz	a5,80001658 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    80001630:	00853703          	ld	a4,8(a0)
    80001634:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    80001638:	00070663          	beqz	a4,80001644 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    8000163c:	00053783          	ld	a5,0(a0)
    80001640:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001644:	00053023          	sd	zero,0(a0)
    80001648:	00053423          	sd	zero,8(a0)
    }
}
    8000164c:	00813403          	ld	s0,8(sp)
    80001650:	01010113          	addi	sp,sp,16
    80001654:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001658:	00853783          	ld	a5,8(a0)
    8000165c:	00078463          	beqz	a5,80001664 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001660:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001664:	00853783          	ld	a5,8(a0)
    80001668:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000166c:	00053023          	sd	zero,0(a0)
    80001670:	00053423          	sd	zero,8(a0)
    80001674:	fd9ff06f          	j	8000164c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001678 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001678:	fe010113          	addi	sp,sp,-32
    8000167c:	00113c23          	sd	ra,24(sp)
    80001680:	00813823          	sd	s0,16(sp)
    80001684:	00913423          	sd	s1,8(sp)
    80001688:	01213023          	sd	s2,0(sp)
    8000168c:	02010413          	addi	s0,sp,32
    80001690:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    80001694:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001698:	05050593          	addi	a1,a0,80
    8000169c:	00090513          	mv	a0,s2
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	f7c080e7          	jalr	-132(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    800016a8:	04848593          	addi	a1,s1,72
    800016ac:	00090513          	mv	a0,s2
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	f38080e7          	jalr	-200(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016b8:	01813083          	ld	ra,24(sp)
    800016bc:	01013403          	ld	s0,16(sp)
    800016c0:	00813483          	ld	s1,8(sp)
    800016c4:	00013903          	ld	s2,0(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret

00000000800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	00913423          	sd	s1,8(sp)
    800016e0:	01213023          	sd	s2,0(sp)
    800016e4:	02010413          	addi	s0,sp,32
    800016e8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016ec:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    800016f0:	04050593          	addi	a1,a0,64
    800016f4:	00090513          	mv	a0,s2
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	f24080e7          	jalr	-220(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001700:	05048593          	addi	a1,s1,80
    80001704:	00090513          	mv	a0,s2
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	ee0080e7          	jalr	-288(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001710:	01813083          	ld	ra,24(sp)
    80001714:	01013403          	ld	s0,16(sp)
    80001718:	00813483          	ld	s1,8(sp)
    8000171c:	00013903          	ld	s2,0(sp)
    80001720:	02010113          	addi	sp,sp,32
    80001724:	00008067          	ret

0000000080001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    80001728:	fe010113          	addi	sp,sp,-32
    8000172c:	00113c23          	sd	ra,24(sp)
    80001730:	00813823          	sd	s0,16(sp)
    80001734:	00913423          	sd	s1,8(sp)
    80001738:	01213023          	sd	s2,0(sp)
    8000173c:	02010413          	addi	s0,sp,32
    80001740:	00050913          	mv	s2,a0
    80001744:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001748:	04850593          	addi	a1,a0,72
    8000174c:	00048513          	mv	a0,s1
    80001750:	00000097          	auipc	ra,0x0
    80001754:	ecc080e7          	jalr	-308(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001758:	05090593          	addi	a1,s2,80
    8000175c:	00048513          	mv	a0,s1
    80001760:	00000097          	auipc	ra,0x0
    80001764:	e88080e7          	jalr	-376(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001768:	01813083          	ld	ra,24(sp)
    8000176c:	01013403          	ld	s0,16(sp)
    80001770:	00813483          	ld	s1,8(sp)
    80001774:	00013903          	ld	s2,0(sp)
    80001778:	02010113          	addi	sp,sp,32
    8000177c:	00008067          	ret

0000000080001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	00913423          	sd	s1,8(sp)
    80001790:	01213023          	sd	s2,0(sp)
    80001794:	02010413          	addi	s0,sp,32
    80001798:	00050913          	mv	s2,a0
    8000179c:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    800017a0:	05050593          	addi	a1,a0,80
    800017a4:	00048513          	mv	a0,s1
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	e74080e7          	jalr	-396(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    800017b0:	04090593          	addi	a1,s2,64
    800017b4:	00048513          	mv	a0,s1
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	e30080e7          	jalr	-464(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800017c0:	01813083          	ld	ra,24(sp)
    800017c4:	01013403          	ld	s0,16(sp)
    800017c8:	00813483          	ld	s1,8(sp)
    800017cc:	00013903          	ld	s2,0(sp)
    800017d0:	02010113          	addi	sp,sp,32
    800017d4:	00008067          	ret

00000000800017d8 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    800017d8:	fd010113          	addi	sp,sp,-48
    800017dc:	02113423          	sd	ra,40(sp)
    800017e0:	02813023          	sd	s0,32(sp)
    800017e4:	00913c23          	sd	s1,24(sp)
    800017e8:	01213823          	sd	s2,16(sp)
    800017ec:	01313423          	sd	s3,8(sp)
    800017f0:	03010413          	addi	s0,sp,48
    800017f4:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(cachep->slab_size);
    800017f8:	05853503          	ld	a0,88(a0)
    800017fc:	00001097          	auipc	ra,0x1
    80001800:	6b0080e7          	jalr	1712(ra) # 80002eac <_Z11buddy_allocm>
    if(newSlab == nullptr)
    80001804:	0a050063          	beqz	a0,800018a4 <_Z12allocateSlabP12kmem_cache_s+0xcc>
    80001808:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    8000180c:	0409b783          	ld	a5,64(s3)
    80001810:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    80001814:	00078463          	beqz	a5,8000181c <_Z12allocateSlabP12kmem_cache_s+0x44>
        cachep->slabs_empty->prev = newSlab;
    80001818:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    8000181c:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    80001820:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    80001824:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    80001828:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    8000182c:	0589b683          	ld	a3,88(s3)
    80001830:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001834:	dd068693          	addi	a3,a3,-560
    80001838:	0609b783          	ld	a5,96(s3)
    8000183c:	02f6d6b3          	divu	a3,a3,a5
    80001840:	00d4bc23          	sd	a3,24(s1)
    newSlab->startAddr = (void*)((size_t)newSlab + sizeof(slab_t));
    80001844:	23048793          	addi	a5,s1,560
    80001848:	02f4b423          	sd	a5,40(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    8000184c:	00000713          	li	a4,0
    80001850:	00768793          	addi	a5,a3,7
    80001854:	0037d793          	srli	a5,a5,0x3
    80001858:	00f77a63          	bgeu	a4,a5,8000186c <_Z12allocateSlabP12kmem_cache_s+0x94>
        newSlab->allocated[i] = 0;
    8000185c:	00e487b3          	add	a5,s1,a4
    80001860:	02078823          	sb	zero,48(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001864:	00170713          	addi	a4,a4,1
    80001868:	fe9ff06f          	j	80001850 <_Z12allocateSlabP12kmem_cache_s+0x78>

    if(cachep->ctor != nullptr)
    8000186c:	0689b783          	ld	a5,104(s3)
    80001870:	02078a63          	beqz	a5,800018a4 <_Z12allocateSlabP12kmem_cache_s+0xcc>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001874:	00000913          	li	s2,0
    80001878:	0184b783          	ld	a5,24(s1)
    8000187c:	02f97463          	bgeu	s2,a5,800018a4 <_Z12allocateSlabP12kmem_cache_s+0xcc>
            cachep->ctor((void*)((size_t)newSlab->startAddr + i*newSlab->owner->obj_size));
    80001880:	0689b703          	ld	a4,104(s3)
    80001884:	0284b503          	ld	a0,40(s1)
    80001888:	0104b783          	ld	a5,16(s1)
    8000188c:	0607b783          	ld	a5,96(a5)
    80001890:	032787b3          	mul	a5,a5,s2
    80001894:	00f50533          	add	a0,a0,a5
    80001898:	000700e7          	jalr	a4
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    8000189c:	00190913          	addi	s2,s2,1
    800018a0:	fd9ff06f          	j	80001878 <_Z12allocateSlabP12kmem_cache_s+0xa0>
    }
}
    800018a4:	02813083          	ld	ra,40(sp)
    800018a8:	02013403          	ld	s0,32(sp)
    800018ac:	01813483          	ld	s1,24(sp)
    800018b0:	01013903          	ld	s2,16(sp)
    800018b4:	00813983          	ld	s3,8(sp)
    800018b8:	03010113          	addi	sp,sp,48
    800018bc:	00008067          	ret

00000000800018c0 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    800018c0:	ff010113          	addi	sp,sp,-16
    800018c4:	00813423          	sd	s0,8(sp)
    800018c8:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    800018cc:	00001737          	lui	a4,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018d0:	23050793          	addi	a5,a0,560
    800018d4:	00f77663          	bgeu	a4,a5,800018e0 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    800018d8:	00171713          	slli	a4,a4,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018dc:	ff5ff06f          	j	800018d0 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018e0:	dd070813          	addi	a6,a4,-560 # dd0 <_entry-0x7ffff230>
    800018e4:	02a87833          	remu	a6,a6,a0
    800018e8:	00070313          	mv	t1,a4
    size_t oldSize = bestSize;

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    800018ec:	00100693          	li	a3,1
    800018f0:	0080006f          	j	800018f8 <_Z18getOptimalSlabSizem+0x38>
    800018f4:	00168693          	addi	a3,a3,1
    800018f8:	00400793          	li	a5,4
    800018fc:	02d7e663          	bltu	a5,a3,80001928 <_Z18getOptimalSlabSizem+0x68>
    {
        size_t newSize = oldSize << i;
    80001900:	00d71633          	sll	a2,a4,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    80001904:	dd060793          	addi	a5,a2,-560
    80001908:	02a7f5b3          	remu	a1,a5,a0
        size_t numOfObjs = (newSize - sizeof(slab_t)) / obj_size;
    8000190c:	02a7d7b3          	divu	a5,a5,a0
        if(newWaste < optimalWaste && numOfObjs <= MAX_NUM_OF_OBJS)
    80001910:	ff05f2e3          	bgeu	a1,a6,800018f4 <_Z18getOptimalSlabSizem+0x34>
    80001914:	000018b7          	lui	a7,0x1
    80001918:	fcf8eee3          	bltu	a7,a5,800018f4 <_Z18getOptimalSlabSizem+0x34>
        {
            optimalWaste = newWaste;
    8000191c:	00058813          	mv	a6,a1
            bestSize = newSize;
    80001920:	00060313          	mv	t1,a2
    80001924:	fd1ff06f          	j	800018f4 <_Z18getOptimalSlabSizem+0x34>
            bestSize = newSize;
        }
    }*/

    return bestSize / BLOCK_SIZE;
}
    80001928:	00c35513          	srli	a0,t1,0xc
    8000192c:	00813403          	ld	s0,8(sp)
    80001930:	01010113          	addi	sp,sp,16
    80001934:	00008067          	ret

0000000080001938 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00813423          	sd	s0,8(sp)
    80001940:	01010413          	addi	s0,sp,16
    80001944:	00050613          	mv	a2,a0
    if(cachep == nullptr || objp == nullptr)
    80001948:	02050c63          	beqz	a0,80001980 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    8000194c:	06058a63          	beqz	a1,800019c0 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001950:	04853503          	ld	a0,72(a0)
    80001954:	0080006f          	j	8000195c <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab->startAddr + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp >= (size_t)slab->startAddr && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    80001958:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000195c:	02050863          	beqz	a0,8000198c <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab->startAddr + slab->numOfObjects*slab->owner->obj_size;
    80001960:	02853703          	ld	a4,40(a0)
    80001964:	01853783          	ld	a5,24(a0)
    80001968:	01053683          	ld	a3,16(a0)
    8000196c:	0606b683          	ld	a3,96(a3)
    80001970:	02d787b3          	mul	a5,a5,a3
    80001974:	00f707b3          	add	a5,a4,a5
        if((size_t)objp >= (size_t)slab->startAddr && (size_t)objp < endAddr)
    80001978:	fee5e0e3          	bltu	a1,a4,80001958 <_Z8findSlabP12kmem_cache_sPKv+0x20>
    8000197c:	fcf5fee3          	bgeu	a1,a5,80001958 <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001980:	00813403          	ld	s0,8(sp)
    80001984:	01010113          	addi	sp,sp,16
    80001988:	00008067          	ret
    slab = cachep->slabs_partial;
    8000198c:	05063503          	ld	a0,80(a2)
    80001990:	0080006f          	j	80001998 <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    80001994:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001998:	fe0504e3          	beqz	a0,80001980 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab->startAddr + slab->numOfObjects*slab->owner->obj_size;
    8000199c:	02853703          	ld	a4,40(a0)
    800019a0:	01853783          	ld	a5,24(a0)
    800019a4:	01053683          	ld	a3,16(a0)
    800019a8:	0606b683          	ld	a3,96(a3)
    800019ac:	02d787b3          	mul	a5,a5,a3
    800019b0:	00f707b3          	add	a5,a4,a5
        if((size_t)objp >= (size_t)slab->startAddr && (size_t)objp < endAddr)
    800019b4:	fee5e0e3          	bltu	a1,a4,80001994 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019b8:	fcf5fee3          	bgeu	a1,a5,80001994 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019bc:	fc5ff06f          	j	80001980 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    800019c0:	00058513          	mv	a0,a1
    800019c4:	fbdff06f          	j	80001980 <_Z8findSlabP12kmem_cache_sPKv+0x48>

00000000800019c8 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00813423          	sd	s0,8(sp)
    800019d0:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    800019d4:	41f5d79b          	sraiw	a5,a1,0x1f
    800019d8:	01d7d79b          	srliw	a5,a5,0x1d
    800019dc:	00b785bb          	addw	a1,a5,a1
    800019e0:	4035d71b          	sraiw	a4,a1,0x3
    800019e4:	00e50533          	add	a0,a0,a4
    800019e8:	03050703          	lb	a4,48(a0)
    800019ec:	0075f593          	andi	a1,a1,7
    800019f0:	40f585bb          	subw	a1,a1,a5
    800019f4:	00100793          	li	a5,1
    800019f8:	00b795bb          	sllw	a1,a5,a1
    800019fc:	fff5c593          	not	a1,a1
    80001a00:	00b775b3          	and	a1,a4,a1
    80001a04:	02b50823          	sb	a1,48(a0)
}
    80001a08:	00813403          	ld	s0,8(sp)
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret

0000000080001a14 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001a14:	fe010113          	addi	sp,sp,-32
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00813823          	sd	s0,16(sp)
    80001a20:	00913423          	sd	s1,8(sp)
    80001a24:	02010413          	addi	s0,sp,32
    80001a28:	00050493          	mv	s1,a0
    KConsole::trapPrintString("One slab info---------\n");
    80001a2c:	00006517          	auipc	a0,0x6
    80001a30:	60450513          	addi	a0,a0,1540 # 80008030 <CONSOLE_STATUS+0x20>
    80001a34:	00002097          	auipc	ra,0x2
    80001a38:	e18080e7          	jalr	-488(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    80001a3c:	01000613          	li	a2,16
    80001a40:	00048593          	mv	a1,s1
    80001a44:	00006517          	auipc	a0,0x6
    80001a48:	60450513          	addi	a0,a0,1540 # 80008048 <CONSOLE_STATUS+0x38>
    80001a4c:	00002097          	auipc	ra,0x2
    80001a50:	ed8080e7          	jalr	-296(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a54:	00a00613          	li	a2,10
    80001a58:	0204b583          	ld	a1,32(s1)
    80001a5c:	00006517          	auipc	a0,0x6
    80001a60:	5fc50513          	addi	a0,a0,1532 # 80008058 <CONSOLE_STATUS+0x48>
    80001a64:	00002097          	auipc	ra,0x2
    80001a68:	ec0080e7          	jalr	-320(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001a6c:	00a00613          	li	a2,10
    80001a70:	0184b583          	ld	a1,24(s1)
    80001a74:	00006517          	auipc	a0,0x6
    80001a78:	60450513          	addi	a0,a0,1540 # 80008078 <CONSOLE_STATUS+0x68>
    80001a7c:	00002097          	auipc	ra,0x2
    80001a80:	ea8080e7          	jalr	-344(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab start addr ", (size_t)slab->startAddr, 16);
    80001a84:	01000613          	li	a2,16
    80001a88:	0284b583          	ld	a1,40(s1)
    80001a8c:	00006517          	auipc	a0,0x6
    80001a90:	60450513          	addi	a0,a0,1540 # 80008090 <CONSOLE_STATUS+0x80>
    80001a94:	00002097          	auipc	ra,0x2
    80001a98:	e90080e7          	jalr	-368(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintInt(i);
        KConsole::trapPrintString(" : ");
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }*/
}
    80001a9c:	01813083          	ld	ra,24(sp)
    80001aa0:	01013403          	ld	s0,16(sp)
    80001aa4:	00813483          	ld	s1,8(sp)
    80001aa8:	02010113          	addi	sp,sp,32
    80001aac:	00008067          	ret

0000000080001ab0 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001ab0:	12050863          	beqz	a0,80001be0 <_Z16free_slab_objectP6slab_sPKv+0x130>
{
    80001ab4:	fd010113          	addi	sp,sp,-48
    80001ab8:	02113423          	sd	ra,40(sp)
    80001abc:	02813023          	sd	s0,32(sp)
    80001ac0:	00913c23          	sd	s1,24(sp)
    80001ac4:	01213823          	sd	s2,16(sp)
    80001ac8:	01313423          	sd	s3,8(sp)
    80001acc:	01413023          	sd	s4,0(sp)
    80001ad0:	03010413          	addi	s0,sp,48
    80001ad4:	00050493          	mv	s1,a0
    80001ad8:	00058913          	mv	s2,a1
    if(slab == nullptr || objp == nullptr)
    80001adc:	08058263          	beqz	a1,80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
        return;
    int indexOfObject = ((size_t)objp - (size_t)slab->startAddr) / slab->owner->obj_size;
    80001ae0:	02853783          	ld	a5,40(a0)
    80001ae4:	40f589b3          	sub	s3,a1,a5
    80001ae8:	01053a03          	ld	s4,16(a0)
    80001aec:	060a3703          	ld	a4,96(s4)
    80001af0:	02e9d9b3          	divu	s3,s3,a4
    80001af4:	0009899b          	sext.w	s3,s3
    if((size_t)objp != (size_t)slab->startAddr + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001af8:	03370733          	mul	a4,a4,s3
    80001afc:	00e787b3          	add	a5,a5,a4
    80001b00:	06f59063          	bne	a1,a5,80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001b04:	00098593          	mv	a1,s3
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	958080e7          	jalr	-1704(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    80001b10:	04050863          	beqz	a0,80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
        return;

    kmem_cache_t* cachep = slab->owner;
    if(cachep->dtor != nullptr)
    80001b14:	070a3783          	ld	a5,112(s4)
    80001b18:	00078663          	beqz	a5,80001b24 <_Z16free_slab_objectP6slab_sPKv+0x74>
        cachep->dtor((void*)objp);
    80001b1c:	00090513          	mv	a0,s2
    80001b20:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001b24:	068a3783          	ld	a5,104(s4)
    80001b28:	00078663          	beqz	a5,80001b34 <_Z16free_slab_objectP6slab_sPKv+0x84>
        cachep->ctor((void*)objp);
    80001b2c:	00090513          	mv	a0,s2
    80001b30:	000780e7          	jalr	a5

    resetAllocatedIndex(slab, indexOfObject);
    80001b34:	00098593          	mv	a1,s3
    80001b38:	00048513          	mv	a0,s1
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	e8c080e7          	jalr	-372(ra) # 800019c8 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001b44:	0184b703          	ld	a4,24(s1)
    80001b48:	0204b783          	ld	a5,32(s1)
    80001b4c:	02f70a63          	beq	a4,a5,80001b80 <_Z16free_slab_objectP6slab_sPKv+0xd0>
        removeFullSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
        if(empty(slab))
            removePartialSlab(slab->owner, slab);
    }
    else if(slab->numOfAllocatedObjects == 1)
    80001b50:	00100713          	li	a4,1
    80001b54:	06e78663          	beq	a5,a4,80001bc0 <_Z16free_slab_objectP6slab_sPKv+0x110>
    {
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
    80001b58:	fff78793          	addi	a5,a5,-1
    80001b5c:	02f4b023          	sd	a5,32(s1)
}
    80001b60:	02813083          	ld	ra,40(sp)
    80001b64:	02013403          	ld	s0,32(sp)
    80001b68:	01813483          	ld	s1,24(sp)
    80001b6c:	01013903          	ld	s2,16(sp)
    80001b70:	00813983          	ld	s3,8(sp)
    80001b74:	00013a03          	ld	s4,0(sp)
    80001b78:	03010113          	addi	sp,sp,48
    80001b7c:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    80001b80:	00048593          	mv	a1,s1
    80001b84:	0104b503          	ld	a0,16(s1)
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	ba0080e7          	jalr	-1120(ra) # 80001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b90:	0204b783          	ld	a5,32(s1)
    80001b94:	fff78793          	addi	a5,a5,-1
    80001b98:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001b9c:	00048513          	mv	a0,s1
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	a28080e7          	jalr	-1496(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001ba8:	fa050ce3          	beqz	a0,80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
            removePartialSlab(slab->owner, slab);
    80001bac:	00048593          	mv	a1,s1
    80001bb0:	0104b503          	ld	a0,16(s1)
    80001bb4:	00000097          	auipc	ra,0x0
    80001bb8:	bcc080e7          	jalr	-1076(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001bbc:	fa5ff06f          	j	80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
        removePartialSlab(slab->owner, slab);
    80001bc0:	00048593          	mv	a1,s1
    80001bc4:	0104b503          	ld	a0,16(s1)
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	bb8080e7          	jalr	-1096(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001bd0:	0204b783          	ld	a5,32(s1)
    80001bd4:	fff78793          	addi	a5,a5,-1
    80001bd8:	02f4b023          	sd	a5,32(s1)
    80001bdc:	f85ff06f          	j	80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
    80001be0:	00008067          	ret

0000000080001be4 <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001be4:	fe010113          	addi	sp,sp,-32
    80001be8:	00113c23          	sd	ra,24(sp)
    80001bec:	00813823          	sd	s0,16(sp)
    80001bf0:	00913423          	sd	s1,8(sp)
    80001bf4:	01213023          	sd	s2,0(sp)
    80001bf8:	02010413          	addi	s0,sp,32
    80001bfc:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001c00:	10050a63          	beqz	a0,80001d14 <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001c04:	05053503          	ld	a0,80(a0)
    80001c08:	04051a63          	bnez	a0,80001c5c <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001c0c:	0404b503          	ld	a0,64(s1)
    80001c10:	08050a63          	beqz	a0,80001ca4 <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	8d4080e7          	jalr	-1836(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001c1c:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001c20:	0404b503          	ld	a0,64(s1)
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	9a4080e7          	jalr	-1628(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001c2c:	04051663          	bnez	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c30:	00048513          	mv	a0,s1
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	a9c080e7          	jalr	-1380(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c3c:	0504b503          	ld	a0,80(s1)
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	960080e7          	jalr	-1696(ra) # 800015a0 <_Z4fullP6slab_s>
    80001c48:	02050863          	beqz	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001c4c:	00048513          	mv	a0,s1
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	a28080e7          	jalr	-1496(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001c58:	0200006f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	88c080e7          	jalr	-1908(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001c64:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001c68:	0504b503          	ld	a0,80(s1)
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	934080e7          	jalr	-1740(ra) # 800015a0 <_Z4fullP6slab_s>
    80001c74:	02051063          	bnez	a0,80001c94 <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001c78:	00090513          	mv	a0,s2
    80001c7c:	01813083          	ld	ra,24(sp)
    80001c80:	01013403          	ld	s0,16(sp)
    80001c84:	00813483          	ld	s1,8(sp)
    80001c88:	00013903          	ld	s2,0(sp)
    80001c8c:	02010113          	addi	sp,sp,32
    80001c90:	00008067          	ret
            putPartialToFull(cachep);
    80001c94:	00048513          	mv	a0,s1
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	9e0080e7          	jalr	-1568(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001ca0:	fd9ff06f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001ca4:	00048513          	mv	a0,s1
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	b30080e7          	jalr	-1232(ra) # 800017d8 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001cb0:	0404b903          	ld	s2,64(s1)
    80001cb4:	04090863          	beqz	s2,80001d04 <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001cb8:	00090513          	mv	a0,s2
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	82c080e7          	jalr	-2004(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001cc4:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001cc8:	0404b503          	ld	a0,64(s1)
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	8fc080e7          	jalr	-1796(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001cd4:	fa0512e3          	bnez	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001cd8:	00048513          	mv	a0,s1
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	9f4080e7          	jalr	-1548(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001ce4:	0504b503          	ld	a0,80(s1)
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	8b8080e7          	jalr	-1864(ra) # 800015a0 <_Z4fullP6slab_s>
    80001cf0:	f80504e3          	beqz	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001cf4:	00048513          	mv	a0,s1
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	980080e7          	jalr	-1664(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001d00:	f79ff06f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001d04:	0784a783          	lw	a5,120(s1)
    80001d08:	0017e793          	ori	a5,a5,1
    80001d0c:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001d10:	f69ff06f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001d14:	00050913          	mv	s2,a0
    80001d18:	f61ff06f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001d1c:	fc010113          	addi	sp,sp,-64
    80001d20:	02113c23          	sd	ra,56(sp)
    80001d24:	02813823          	sd	s0,48(sp)
    80001d28:	02913423          	sd	s1,40(sp)
    80001d2c:	03213023          	sd	s2,32(sp)
    80001d30:	01313c23          	sd	s3,24(sp)
    80001d34:	01413823          	sd	s4,16(sp)
    80001d38:	01513423          	sd	s5,8(sp)
    80001d3c:	04010413          	addi	s0,sp,64
    80001d40:	00050993          	mv	s3,a0
    80001d44:	00058913          	mv	s2,a1
    80001d48:	00060a13          	mv	s4,a2
    80001d4c:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001d50:	00007517          	auipc	a0,0x7
    80001d54:	ca053503          	ld	a0,-864(a0) # 800089f0 <_ZL13slabAllocator>
    80001d58:	06850513          	addi	a0,a0,104
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	e88080e7          	jalr	-376(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001d64:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001d68:	02050863          	beqz	a0,80001d98 <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001d6c:	00090513          	mv	a0,s2
    80001d70:	00000097          	auipc	ra,0x0
    80001d74:	b50080e7          	jalr	-1200(ra) # 800018c0 <_Z18getOptimalSlabSizem>
    80001d78:	00050613          	mv	a2,a0
    80001d7c:	000a8793          	mv	a5,s5
    80001d80:	000a0713          	mv	a4,s4
    80001d84:	00090693          	mv	a3,s2
    80001d88:	00098593          	mv	a1,s3
    80001d8c:	00048513          	mv	a0,s1
    80001d90:	fffff097          	auipc	ra,0xfffff
    80001d94:	5d0080e7          	jalr	1488(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001d98:	00048513          	mv	a0,s1
    80001d9c:	03813083          	ld	ra,56(sp)
    80001da0:	03013403          	ld	s0,48(sp)
    80001da4:	02813483          	ld	s1,40(sp)
    80001da8:	02013903          	ld	s2,32(sp)
    80001dac:	01813983          	ld	s3,24(sp)
    80001db0:	01013a03          	ld	s4,16(sp)
    80001db4:	00813a83          	ld	s5,8(sp)
    80001db8:	04010113          	addi	sp,sp,64
    80001dbc:	00008067          	ret

0000000080001dc0 <_Z9kmem_initPvi>:
{
    80001dc0:	fe010113          	addi	sp,sp,-32
    80001dc4:	00113c23          	sd	ra,24(sp)
    80001dc8:	00813823          	sd	s0,16(sp)
    80001dcc:	00913423          	sd	s1,8(sp)
    80001dd0:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	2d8080e7          	jalr	728(ra) # 800030ac <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001ddc:	fffff097          	auipc	ra,0xfffff
    80001de0:	610080e7          	jalr	1552(ra) # 800013ec <_Z19slab_allocator_initP14buddyAllocator>
    80001de4:	00007497          	auipc	s1,0x7
    80001de8:	c0c48493          	addi	s1,s1,-1012 # 800089f0 <_ZL13slabAllocator>
    80001dec:	00a4b023          	sd	a0,0(s1)
    cacheOfSlabs = kmem_cache_create("Cache of slabs", sizeof(slab_t), nullptr,nullptr);
    80001df0:	00000693          	li	a3,0
    80001df4:	00000613          	li	a2,0
    80001df8:	23000593          	li	a1,560
    80001dfc:	00006517          	auipc	a0,0x6
    80001e00:	2ac50513          	addi	a0,a0,684 # 800080a8 <CONSOLE_STATUS+0x98>
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	f18080e7          	jalr	-232(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80001e0c:	00a4b423          	sd	a0,8(s1)
}
    80001e10:	01813083          	ld	ra,24(sp)
    80001e14:	01013403          	ld	s0,16(sp)
    80001e18:	00813483          	ld	s1,8(sp)
    80001e1c:	02010113          	addi	sp,sp,32
    80001e20:	00008067          	ret

0000000080001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001e24:	04050663          	beqz	a0,80001e70 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
{
    80001e28:	fe010113          	addi	sp,sp,-32
    80001e2c:	00113c23          	sd	ra,24(sp)
    80001e30:	00813823          	sd	s0,16(sp)
    80001e34:	00913423          	sd	s1,8(sp)
    80001e38:	02010413          	addi	s0,sp,32
    80001e3c:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001e40:	00058e63          	beqz	a1,80001e5c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	af4080e7          	jalr	-1292(ra) # 80001938 <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001e4c:	00050863          	beqz	a0,80001e5c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>

    free_slab_object(slab, objp);
    80001e50:	00048593          	mv	a1,s1
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	c5c080e7          	jalr	-932(ra) # 80001ab0 <_Z16free_slab_objectP6slab_sPKv>
}
    80001e5c:	01813083          	ld	ra,24(sp)
    80001e60:	01013403          	ld	s0,16(sp)
    80001e64:	00813483          	ld	s1,8(sp)
    80001e68:	02010113          	addi	sp,sp,32
    80001e6c:	00008067          	ret
    80001e70:	00008067          	ret

0000000080001e74 <_Z15bigCacheKmallocP12kmem_cache_s>:
{
    80001e74:	fd010113          	addi	sp,sp,-48
    80001e78:	02113423          	sd	ra,40(sp)
    80001e7c:	02813023          	sd	s0,32(sp)
    80001e80:	00913c23          	sd	s1,24(sp)
    80001e84:	01213823          	sd	s2,16(sp)
    80001e88:	01313423          	sd	s3,8(sp)
    80001e8c:	03010413          	addi	s0,sp,48
    80001e90:	00050913          	mv	s2,a0
    if(cachep == nullptr)
    80001e94:	08050a63          	beqz	a0,80001f28 <_Z15bigCacheKmallocP12kmem_cache_s+0xb4>
    slab_t* slab = (slab_t*)kmem_cache_alloc(cacheOfSlabs);
    80001e98:	00007517          	auipc	a0,0x7
    80001e9c:	b6053503          	ld	a0,-1184(a0) # 800089f8 <_ZL12cacheOfSlabs>
    80001ea0:	00000097          	auipc	ra,0x0
    80001ea4:	d44080e7          	jalr	-700(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001ea8:	00050493          	mv	s1,a0
    if(slab == nullptr)
    80001eac:	08050263          	beqz	a0,80001f30 <_Z15bigCacheKmallocP12kmem_cache_s+0xbc>
    slab->owner = cachep;
    80001eb0:	01253823          	sd	s2,16(a0)
    slab->numOfObjects = 1;
    80001eb4:	00100793          	li	a5,1
    80001eb8:	00f53c23          	sd	a5,24(a0)
    slab->numOfAllocatedObjects = 1;
    80001ebc:	02f53023          	sd	a5,32(a0)
    slab->allocated[0] = 0;
    80001ec0:	02050823          	sb	zero,48(a0)
    void* addr = buddy_alloc(cachep->obj_size / BLOCK_SIZE);
    80001ec4:	06093503          	ld	a0,96(s2)
    80001ec8:	00c55513          	srli	a0,a0,0xc
    80001ecc:	00001097          	auipc	ra,0x1
    80001ed0:	fe0080e7          	jalr	-32(ra) # 80002eac <_Z11buddy_allocm>
    80001ed4:	00050993          	mv	s3,a0
    if(addr == nullptr)
    80001ed8:	02050c63          	beqz	a0,80001f10 <_Z15bigCacheKmallocP12kmem_cache_s+0x9c>
    slab->startAddr = addr;
    80001edc:	02a4b423          	sd	a0,40(s1)
    insertIntoSlabList(slab, &cachep->slabs_full);
    80001ee0:	04890593          	addi	a1,s2,72
    80001ee4:	00048513          	mv	a0,s1
    80001ee8:	fffff097          	auipc	ra,0xfffff
    80001eec:	700080e7          	jalr	1792(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001ef0:	00098513          	mv	a0,s3
    80001ef4:	02813083          	ld	ra,40(sp)
    80001ef8:	02013403          	ld	s0,32(sp)
    80001efc:	01813483          	ld	s1,24(sp)
    80001f00:	01013903          	ld	s2,16(sp)
    80001f04:	00813983          	ld	s3,8(sp)
    80001f08:	03010113          	addi	sp,sp,48
    80001f0c:	00008067          	ret
        kmem_cache_free(cacheOfSlabs, slab);
    80001f10:	00048593          	mv	a1,s1
    80001f14:	00007517          	auipc	a0,0x7
    80001f18:	ae453503          	ld	a0,-1308(a0) # 800089f8 <_ZL12cacheOfSlabs>
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	f08080e7          	jalr	-248(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
        return nullptr;
    80001f24:	fcdff06f          	j	80001ef0 <_Z15bigCacheKmallocP12kmem_cache_s+0x7c>
        return nullptr;
    80001f28:	00050993          	mv	s3,a0
    80001f2c:	fc5ff06f          	j	80001ef0 <_Z15bigCacheKmallocP12kmem_cache_s+0x7c>
        return nullptr;
    80001f30:	00050993          	mv	s3,a0
    80001f34:	fbdff06f          	j	80001ef0 <_Z15bigCacheKmallocP12kmem_cache_s+0x7c>

0000000080001f38 <_Z9big_kfreeP6slab_sPKv>:
{
    80001f38:	fe010113          	addi	sp,sp,-32
    80001f3c:	00113c23          	sd	ra,24(sp)
    80001f40:	00813823          	sd	s0,16(sp)
    80001f44:	00913423          	sd	s1,8(sp)
    80001f48:	01213023          	sd	s2,0(sp)
    80001f4c:	02010413          	addi	s0,sp,32
    80001f50:	00050493          	mv	s1,a0
    if(slab == nullptr || objp == nullptr)
    80001f54:	04050c63          	beqz	a0,80001fac <_Z9big_kfreeP6slab_sPKv+0x74>
    80001f58:	00058513          	mv	a0,a1
    80001f5c:	04058863          	beqz	a1,80001fac <_Z9big_kfreeP6slab_sPKv+0x74>
    kmem_cache_t* cachep = slab->owner;
    80001f60:	0104b903          	ld	s2,16(s1)
    buddy_free((void*)objp, cachep->obj_size / BLOCK_SIZE);
    80001f64:	06093583          	ld	a1,96(s2)
    80001f68:	00c5d593          	srli	a1,a1,0xc
    80001f6c:	00001097          	auipc	ra,0x1
    80001f70:	234080e7          	jalr	564(ra) # 800031a0 <_Z10buddy_freePvm>
    removeFullSlab(cachep, slab);
    80001f74:	00048593          	mv	a1,s1
    80001f78:	00090513          	mv	a0,s2
    80001f7c:	fffff097          	auipc	ra,0xfffff
    80001f80:	7ac080e7          	jalr	1964(ra) # 80001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
    removePartialSlab(cachep, slab);
    80001f84:	00048593          	mv	a1,s1
    80001f88:	00090513          	mv	a0,s2
    80001f8c:	fffff097          	auipc	ra,0xfffff
    80001f90:	7f4080e7          	jalr	2036(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    cachep->slabs_empty = nullptr;
    80001f94:	04093023          	sd	zero,64(s2)
    kmem_cache_free(cacheOfSlabs, slab);
    80001f98:	00048593          	mv	a1,s1
    80001f9c:	00007517          	auipc	a0,0x7
    80001fa0:	a5c53503          	ld	a0,-1444(a0) # 800089f8 <_ZL12cacheOfSlabs>
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	e80080e7          	jalr	-384(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
}
    80001fac:	01813083          	ld	ra,24(sp)
    80001fb0:	01013403          	ld	s0,16(sp)
    80001fb4:	00813483          	ld	s1,8(sp)
    80001fb8:	00013903          	ld	s2,0(sp)
    80001fbc:	02010113          	addi	sp,sp,32
    80001fc0:	00008067          	ret

0000000080001fc4 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80001fc4:	14050c63          	beqz	a0,8000211c <_Z15kmem_cache_infoP12kmem_cache_s+0x158>
{
    80001fc8:	fe010113          	addi	sp,sp,-32
    80001fcc:	00113c23          	sd	ra,24(sp)
    80001fd0:	00813823          	sd	s0,16(sp)
    80001fd4:	00913423          	sd	s1,8(sp)
    80001fd8:	01213023          	sd	s2,0(sp)
    80001fdc:	02010413          	addi	s0,sp,32
    80001fe0:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("\n\n\n\n\n");
    80001fe4:	00006517          	auipc	a0,0x6
    80001fe8:	0d450513          	addi	a0,a0,212 # 800080b8 <CONSOLE_STATUS+0xa8>
    80001fec:	00002097          	auipc	ra,0x2
    80001ff0:	860080e7          	jalr	-1952(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001ff4:	00006517          	auipc	a0,0x6
    80001ff8:	0cc50513          	addi	a0,a0,204 # 800080c0 <CONSOLE_STATUS+0xb0>
    80001ffc:	00002097          	auipc	ra,0x2
    80002000:	850080e7          	jalr	-1968(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80002004:	00006517          	auipc	a0,0x6
    80002008:	0f450513          	addi	a0,a0,244 # 800080f8 <CONSOLE_STATUS+0xe8>
    8000200c:	00002097          	auipc	ra,0x2
    80002010:	840080e7          	jalr	-1984(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80002014:	00090513          	mv	a0,s2
    80002018:	00002097          	auipc	ra,0x2
    8000201c:	834080e7          	jalr	-1996(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    80002020:	00006517          	auipc	a0,0x6
    80002024:	18050513          	addi	a0,a0,384 # 800081a0 <CONSOLE_STATUS+0x190>
    80002028:	00002097          	auipc	ra,0x2
    8000202c:	824080e7          	jalr	-2012(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80002030:	00a00613          	li	a2,10
    80002034:	05893583          	ld	a1,88(s2)
    80002038:	00006517          	auipc	a0,0x6
    8000203c:	0d050513          	addi	a0,a0,208 # 80008108 <CONSOLE_STATUS+0xf8>
    80002040:	00002097          	auipc	ra,0x2
    80002044:	8e4080e7          	jalr	-1820(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80002048:	00a00613          	li	a2,10
    8000204c:	06093583          	ld	a1,96(s2)
    80002050:	00006517          	auipc	a0,0x6
    80002054:	0d850513          	addi	a0,a0,216 # 80008128 <CONSOLE_STATUS+0x118>
    80002058:	00002097          	auipc	ra,0x2
    8000205c:	8cc080e7          	jalr	-1844(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80002060:	00006517          	auipc	a0,0x6
    80002064:	0e850513          	addi	a0,a0,232 # 80008148 <CONSOLE_STATUS+0x138>
    80002068:	00001097          	auipc	ra,0x1
    8000206c:	7e4080e7          	jalr	2020(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80002070:	00006517          	auipc	a0,0x6
    80002074:	0f850513          	addi	a0,a0,248 # 80008168 <CONSOLE_STATUS+0x158>
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	7d4080e7          	jalr	2004(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80002080:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80002084:	00048c63          	beqz	s1,8000209c <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    {
        printSlabInfo(slab);
    80002088:	00048513          	mv	a0,s1
    8000208c:	00000097          	auipc	ra,0x0
    80002090:	988080e7          	jalr	-1656(ra) # 80001a14 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80002094:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80002098:	fedff06f          	j	80002084 <_Z15kmem_cache_infoP12kmem_cache_s+0xc0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    8000209c:	00006517          	auipc	a0,0x6
    800020a0:	0dc50513          	addi	a0,a0,220 # 80008178 <CONSOLE_STATUS+0x168>
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	7a8080e7          	jalr	1960(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    800020ac:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    800020b0:	00048c63          	beqz	s1,800020c8 <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    {
        printSlabInfo(slab);
    800020b4:	00048513          	mv	a0,s1
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	95c080e7          	jalr	-1700(ra) # 80001a14 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    800020c0:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    800020c4:	fedff06f          	j	800020b0 <_Z15kmem_cache_infoP12kmem_cache_s+0xec>
    }

    KConsole::trapPrintString("Empty slabs\n");
    800020c8:	00006517          	auipc	a0,0x6
    800020cc:	0c050513          	addi	a0,a0,192 # 80008188 <CONSOLE_STATUS+0x178>
    800020d0:	00001097          	auipc	ra,0x1
    800020d4:	77c080e7          	jalr	1916(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    800020d8:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    800020dc:	00048c63          	beqz	s1,800020f4 <_Z15kmem_cache_infoP12kmem_cache_s+0x130>
    {
        printSlabInfo(slab);
    800020e0:	00048513          	mv	a0,s1
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	930080e7          	jalr	-1744(ra) # 80001a14 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    800020ec:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    800020f0:	fedff06f          	j	800020dc <_Z15kmem_cache_infoP12kmem_cache_s+0x118>
    }

    KConsole::trapPrintString("\n\n\n\n\n");
    800020f4:	00006517          	auipc	a0,0x6
    800020f8:	fc450513          	addi	a0,a0,-60 # 800080b8 <CONSOLE_STATUS+0xa8>
    800020fc:	00001097          	auipc	ra,0x1
    80002100:	750080e7          	jalr	1872(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
}
    80002104:	01813083          	ld	ra,24(sp)
    80002108:	01013403          	ld	s0,16(sp)
    8000210c:	00813483          	ld	s1,8(sp)
    80002110:	00013903          	ld	s2,0(sp)
    80002114:	02010113          	addi	sp,sp,32
    80002118:	00008067          	ret
    8000211c:	00008067          	ret

0000000080002120 <_Z22printSlabAllocatorInfov>:
{
    80002120:	fe010113          	addi	sp,sp,-32
    80002124:	00113c23          	sd	ra,24(sp)
    80002128:	00813823          	sd	s0,16(sp)
    8000212c:	00913423          	sd	s1,8(sp)
    80002130:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80002134:	00006517          	auipc	a0,0x6
    80002138:	06450513          	addi	a0,a0,100 # 80008198 <CONSOLE_STATUS+0x188>
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	710080e7          	jalr	1808(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80002144:	00006517          	auipc	a0,0x6
    80002148:	06450513          	addi	a0,a0,100 # 800081a8 <CONSOLE_STATUS+0x198>
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	700080e7          	jalr	1792(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80002154:	00007497          	auipc	s1,0x7
    80002158:	89c48493          	addi	s1,s1,-1892 # 800089f0 <_ZL13slabAllocator>
    8000215c:	01000613          	li	a2,16
    80002160:	0004b583          	ld	a1,0(s1)
    80002164:	00006517          	auipc	a0,0x6
    80002168:	09450513          	addi	a0,a0,148 # 800081f8 <CONSOLE_STATUS+0x1e8>
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	7b8080e7          	jalr	1976(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    80002174:	00006517          	auipc	a0,0x6
    80002178:	09c50513          	addi	a0,a0,156 # 80008210 <CONSOLE_STATUS+0x200>
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	6d0080e7          	jalr	1744(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80002184:	0004b503          	ld	a0,0(s1)
    80002188:	06850513          	addi	a0,a0,104
    8000218c:	00000097          	auipc	ra,0x0
    80002190:	e38080e7          	jalr	-456(ra) # 80001fc4 <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80002194:	00006517          	auipc	a0,0x6
    80002198:	09450513          	addi	a0,a0,148 # 80008228 <CONSOLE_STATUS+0x218>
    8000219c:	00001097          	auipc	ra,0x1
    800021a0:	6b0080e7          	jalr	1712(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021a4:	00000493          	li	s1,0
    800021a8:	0100006f          	j	800021b8 <_Z22printSlabAllocatorInfov+0x98>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	e18080e7          	jalr	-488(ra) # 80001fc4 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021b4:	00148493          	addi	s1,s1,1
    800021b8:	00c00793          	li	a5,12
    800021bc:	0297e063          	bltu	a5,s1,800021dc <_Z22printSlabAllocatorInfov+0xbc>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    800021c0:	00349793          	slli	a5,s1,0x3
    800021c4:	00007717          	auipc	a4,0x7
    800021c8:	82c73703          	ld	a4,-2004(a4) # 800089f0 <_ZL13slabAllocator>
    800021cc:	00f707b3          	add	a5,a4,a5
    800021d0:	0007b503          	ld	a0,0(a5)
    800021d4:	fc051ce3          	bnez	a0,800021ac <_Z22printSlabAllocatorInfov+0x8c>
    800021d8:	fddff06f          	j	800021b4 <_Z22printSlabAllocatorInfov+0x94>
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    800021dc:	00006517          	auipc	a0,0x6
    800021e0:	fbc50513          	addi	a0,a0,-68 # 80008198 <CONSOLE_STATUS+0x188>
    800021e4:	00001097          	auipc	ra,0x1
    800021e8:	668080e7          	jalr	1640(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    printBuddyInfo();
    800021ec:	00001097          	auipc	ra,0x1
    800021f0:	024080e7          	jalr	36(ra) # 80003210 <_Z14printBuddyInfov>
}
    800021f4:	01813083          	ld	ra,24(sp)
    800021f8:	01013403          	ld	s0,16(sp)
    800021fc:	00813483          	ld	s1,8(sp)
    80002200:	02010113          	addi	sp,sp,32
    80002204:	00008067          	ret

0000000080002208 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80002208:	fd010113          	addi	sp,sp,-48
    8000220c:	02113423          	sd	ra,40(sp)
    80002210:	02813023          	sd	s0,32(sp)
    80002214:	00913c23          	sd	s1,24(sp)
    80002218:	01213823          	sd	s2,16(sp)
    8000221c:	01313423          	sd	s3,8(sp)
    80002220:	03010413          	addi	s0,sp,48
    size_t level = getDeg2Ceil(size);
    80002224:	00001097          	auipc	ra,0x1
    80002228:	b14080e7          	jalr	-1260(ra) # 80002d38 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    8000222c:	00400793          	li	a5,4
    80002230:	00a7fa63          	bgeu	a5,a0,80002244 <_Z7kmallocm+0x3c>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    80002234:	01100793          	li	a5,17
    80002238:	00a7f863          	bgeu	a5,a0,80002248 <_Z7kmallocm+0x40>
        return nullptr;
    8000223c:	00000913          	li	s2,0
    80002240:	0540006f          	j	80002294 <_Z7kmallocm+0x8c>
        level = CACHE_BUFFER_SMALL;
    80002244:	00500513          	li	a0,5
    size = (1 << level);
    80002248:	00100693          	li	a3,1
    8000224c:	00a699bb          	sllw	s3,a3,a0
    size_t index = level - CACHE_BUFFER_SMALL;
    80002250:	ffb50493          	addi	s1,a0,-5

    static size_t border = 12;
    if(level >= border)
    80002254:	00b00793          	li	a5,11
    80002258:	0aa7f863          	bgeu	a5,a0,80002308 <_Z7kmallocm+0x100>
    {
        if(slabAllocator->cachesBuffers[index] == nullptr)
    8000225c:	00006917          	auipc	s2,0x6
    80002260:	79493903          	ld	s2,1940(s2) # 800089f0 <_ZL13slabAllocator>
    80002264:	00349793          	slli	a5,s1,0x3
    80002268:	00f907b3          	add	a5,s2,a5
    8000226c:	0007b783          	ld	a5,0(a5)
    80002270:	04078263          	beqz	a5,800022b4 <_Z7kmallocm+0xac>
            if(slabAllocator->cachesBuffers[index] == nullptr)
                return nullptr;
            init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", 1, size, nullptr,nullptr);
        }

        return bigCacheKmalloc(slabAllocator->cachesBuffers[index]);
    80002274:	00349493          	slli	s1,s1,0x3
    80002278:	00006797          	auipc	a5,0x6
    8000227c:	7787b783          	ld	a5,1912(a5) # 800089f0 <_ZL13slabAllocator>
    80002280:	009784b3          	add	s1,a5,s1
    80002284:	0004b503          	ld	a0,0(s1)
    80002288:	00000097          	auipc	ra,0x0
    8000228c:	bec080e7          	jalr	-1044(ra) # 80001e74 <_Z15bigCacheKmallocP12kmem_cache_s>
    80002290:	00050913          	mv	s2,a0
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
}
    80002294:	00090513          	mv	a0,s2
    80002298:	02813083          	ld	ra,40(sp)
    8000229c:	02013403          	ld	s0,32(sp)
    800022a0:	01813483          	ld	s1,24(sp)
    800022a4:	01013903          	ld	s2,16(sp)
    800022a8:	00813983          	ld	s3,8(sp)
    800022ac:	03010113          	addi	sp,sp,48
    800022b0:	00008067          	ret
            slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    800022b4:	06890513          	addi	a0,s2,104
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	92c080e7          	jalr	-1748(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    800022c0:	00349713          	slli	a4,s1,0x3
    800022c4:	00e90933          	add	s2,s2,a4
    800022c8:	00a93023          	sd	a0,0(s2)
            if(slabAllocator->cachesBuffers[index] == nullptr)
    800022cc:	00006797          	auipc	a5,0x6
    800022d0:	7247b783          	ld	a5,1828(a5) # 800089f0 <_ZL13slabAllocator>
    800022d4:	00e787b3          	add	a5,a5,a4
    800022d8:	0007b903          	ld	s2,0(a5)
    800022dc:	fa090ce3          	beqz	s2,80002294 <_Z7kmallocm+0x8c>
            init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", 1, size, nullptr,nullptr);
    800022e0:	00000793          	li	a5,0
    800022e4:	00000713          	li	a4,0
    800022e8:	00098693          	mv	a3,s3
    800022ec:	00100613          	li	a2,1
    800022f0:	00006597          	auipc	a1,0x6
    800022f4:	f5058593          	addi	a1,a1,-176 # 80008240 <CONSOLE_STATUS+0x230>
    800022f8:	00090513          	mv	a0,s2
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	064080e7          	jalr	100(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    80002304:	f71ff06f          	j	80002274 <_Z7kmallocm+0x6c>
    if(slabAllocator->cachesBuffers[index] == nullptr)
    80002308:	00006917          	auipc	s2,0x6
    8000230c:	6e893903          	ld	s2,1768(s2) # 800089f0 <_ZL13slabAllocator>
    80002310:	00349793          	slli	a5,s1,0x3
    80002314:	00f907b3          	add	a5,s2,a5
    80002318:	0007b783          	ld	a5,0(a5)
    8000231c:	02078463          	beqz	a5,80002344 <_Z7kmallocm+0x13c>
    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    80002320:	00349493          	slli	s1,s1,0x3
    80002324:	00006797          	auipc	a5,0x6
    80002328:	6cc7b783          	ld	a5,1740(a5) # 800089f0 <_ZL13slabAllocator>
    8000232c:	009784b3          	add	s1,a5,s1
    80002330:	0004b503          	ld	a0,0(s1)
    80002334:	00000097          	auipc	ra,0x0
    80002338:	8b0080e7          	jalr	-1872(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    8000233c:	00050913          	mv	s2,a0
    80002340:	f55ff06f          	j	80002294 <_Z7kmallocm+0x8c>
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80002344:	06890513          	addi	a0,s2,104
    80002348:	00000097          	auipc	ra,0x0
    8000234c:	89c080e7          	jalr	-1892(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002350:	00349713          	slli	a4,s1,0x3
    80002354:	00e90933          	add	s2,s2,a4
    80002358:	00a93023          	sd	a0,0(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    8000235c:	00006797          	auipc	a5,0x6
    80002360:	6947b783          	ld	a5,1684(a5) # 800089f0 <_ZL13slabAllocator>
    80002364:	00e787b3          	add	a5,a5,a4
    80002368:	0007b903          	ld	s2,0(a5)
    8000236c:	f20904e3          	beqz	s2,80002294 <_Z7kmallocm+0x8c>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    80002370:	00098513          	mv	a0,s3
    80002374:	fffff097          	auipc	ra,0xfffff
    80002378:	54c080e7          	jalr	1356(ra) # 800018c0 <_Z18getOptimalSlabSizem>
    8000237c:	00050613          	mv	a2,a0
    80002380:	00000793          	li	a5,0
    80002384:	00000713          	li	a4,0
    80002388:	00098693          	mv	a3,s3
    8000238c:	00006597          	auipc	a1,0x6
    80002390:	eb458593          	addi	a1,a1,-332 # 80008240 <CONSOLE_STATUS+0x230>
    80002394:	00090513          	mv	a0,s2
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	fc8080e7          	jalr	-56(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    800023a0:	f81ff06f          	j	80002320 <_Z7kmallocm+0x118>

00000000800023a4 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    800023a4:	0e050063          	beqz	a0,80002484 <_Z5kfreePKv+0xe0>
{
    800023a8:	fd010113          	addi	sp,sp,-48
    800023ac:	02113423          	sd	ra,40(sp)
    800023b0:	02813023          	sd	s0,32(sp)
    800023b4:	00913c23          	sd	s1,24(sp)
    800023b8:	01213823          	sd	s2,16(sp)
    800023bc:	01313423          	sd	s3,8(sp)
    800023c0:	03010413          	addi	s0,sp,48
    800023c4:	00050993          	mv	s3,a0
        return;
    slab_t* slab = nullptr;
    int index = -1;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800023c8:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    800023cc:	00000913          	li	s2,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800023d0:	00c00793          	li	a5,12
    800023d4:	0297ee63          	bltu	a5,s1,80002410 <_Z5kfreePKv+0x6c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    800023d8:	00349793          	slli	a5,s1,0x3
    800023dc:	00006717          	auipc	a4,0x6
    800023e0:	61473703          	ld	a4,1556(a4) # 800089f0 <_ZL13slabAllocator>
    800023e4:	00f707b3          	add	a5,a4,a5
    800023e8:	00098593          	mv	a1,s3
    800023ec:	0007b503          	ld	a0,0(a5)
    800023f0:	fffff097          	auipc	ra,0xfffff
    800023f4:	548080e7          	jalr	1352(ra) # 80001938 <_Z8findSlabP12kmem_cache_sPKv>
    800023f8:	00050913          	mv	s2,a0
        if(slab != nullptr)
    800023fc:	00051663          	bnez	a0,80002408 <_Z5kfreePKv+0x64>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002400:	00148493          	addi	s1,s1,1
    80002404:	fcdff06f          	j	800023d0 <_Z5kfreePKv+0x2c>
        {
            index = i;
    80002408:	0004849b          	sext.w	s1,s1
            break;
    8000240c:	0080006f          	j	80002414 <_Z5kfreePKv+0x70>
    int index = -1;
    80002410:	fff00493          	li	s1,-1
        }
    }
    static size_t border = 12;
    size_t level = index + CACHE_BUFFER_SMALL;
    80002414:	0054849b          	addiw	s1,s1,5
    if(slab != nullptr && level < border)
    80002418:	00090663          	beqz	s2,80002424 <_Z5kfreePKv+0x80>
    8000241c:	00b00793          	li	a5,11
    80002420:	0297f663          	bgeu	a5,s1,8000244c <_Z5kfreePKv+0xa8>
    {
        free_slab_object(slab, objp);
        destroy_slab_list(&(slab->owner->slabs_empty));
    }
    else if(slab != nullptr && level >= border)
    80002424:	00090663          	beqz	s2,80002430 <_Z5kfreePKv+0x8c>
    80002428:	00b00793          	li	a5,11
    8000242c:	0497e263          	bltu	a5,s1,80002470 <_Z5kfreePKv+0xcc>
    {
        big_kfree(slab, objp);
    }
}
    80002430:	02813083          	ld	ra,40(sp)
    80002434:	02013403          	ld	s0,32(sp)
    80002438:	01813483          	ld	s1,24(sp)
    8000243c:	01013903          	ld	s2,16(sp)
    80002440:	00813983          	ld	s3,8(sp)
    80002444:	03010113          	addi	sp,sp,48
    80002448:	00008067          	ret
        free_slab_object(slab, objp);
    8000244c:	00098593          	mv	a1,s3
    80002450:	00090513          	mv	a0,s2
    80002454:	fffff097          	auipc	ra,0xfffff
    80002458:	65c080e7          	jalr	1628(ra) # 80001ab0 <_Z16free_slab_objectP6slab_sPKv>
        destroy_slab_list(&(slab->owner->slabs_empty));
    8000245c:	01093503          	ld	a0,16(s2)
    80002460:	04050513          	addi	a0,a0,64
    80002464:	fffff097          	auipc	ra,0xfffff
    80002468:	e78080e7          	jalr	-392(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    8000246c:	fc5ff06f          	j	80002430 <_Z5kfreePKv+0x8c>
        big_kfree(slab, objp);
    80002470:	00098593          	mv	a1,s3
    80002474:	00090513          	mv	a0,s2
    80002478:	00000097          	auipc	ra,0x0
    8000247c:	ac0080e7          	jalr	-1344(ra) # 80001f38 <_Z9big_kfreeP6slab_sPKv>
    80002480:	fb1ff06f          	j	80002430 <_Z5kfreePKv+0x8c>
    80002484:	00008067          	ret

0000000080002488 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    80002488:	fe010113          	addi	sp,sp,-32
    8000248c:	00113c23          	sd	ra,24(sp)
    80002490:	00813823          	sd	s0,16(sp)
    80002494:	00913423          	sd	s1,8(sp)
    80002498:	02010413          	addi	s0,sp,32
    8000249c:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
    800024a0:	05053783          	ld	a5,80(a0)
    800024a4:	02078263          	beqz	a5,800024c8 <_Z18kmem_cache_destroyP12kmem_cache_s+0x40>
        cachep->errors |= DESTROY_ERROR;
    800024a8:	0784a783          	lw	a5,120(s1)
    800024ac:	0027e793          	ori	a5,a5,2
    800024b0:	06f4ac23          	sw	a5,120(s1)
    }
    destroy_slab_list(&cachep->slabs_empty);
    destroy_slab_list(&cachep->slabs_partial);
    destroy_slab_list(&cachep->slabs_full);
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
}
    800024b4:	01813083          	ld	ra,24(sp)
    800024b8:	01013403          	ld	s0,16(sp)
    800024bc:	00813483          	ld	s1,8(sp)
    800024c0:	02010113          	addi	sp,sp,32
    800024c4:	00008067          	ret
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
    800024c8:	04853783          	ld	a5,72(a0)
    800024cc:	fc079ee3          	bnez	a5,800024a8 <_Z18kmem_cache_destroyP12kmem_cache_s+0x20>
    destroy_slab_list(&cachep->slabs_empty);
    800024d0:	04050513          	addi	a0,a0,64
    800024d4:	fffff097          	auipc	ra,0xfffff
    800024d8:	e08080e7          	jalr	-504(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    800024dc:	05048513          	addi	a0,s1,80
    800024e0:	fffff097          	auipc	ra,0xfffff
    800024e4:	dfc080e7          	jalr	-516(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    800024e8:	04848513          	addi	a0,s1,72
    800024ec:	fffff097          	auipc	ra,0xfffff
    800024f0:	df0080e7          	jalr	-528(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    800024f4:	00048593          	mv	a1,s1
    800024f8:	00006517          	auipc	a0,0x6
    800024fc:	4f853503          	ld	a0,1272(a0) # 800089f0 <_ZL13slabAllocator>
    80002500:	06850513          	addi	a0,a0,104
    80002504:	00000097          	auipc	ra,0x0
    80002508:	920080e7          	jalr	-1760(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    8000250c:	fa9ff06f          	j	800024b4 <_Z18kmem_cache_destroyP12kmem_cache_s+0x2c>

0000000080002510 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80002510:	02050863          	beqz	a0,80002540 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    80002514:	ff010113          	addi	sp,sp,-16
    80002518:	00113423          	sd	ra,8(sp)
    8000251c:	00813023          	sd	s0,0(sp)
    80002520:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    80002524:	04050513          	addi	a0,a0,64
    80002528:	fffff097          	auipc	ra,0xfffff
    8000252c:	db4080e7          	jalr	-588(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    80002530:	00813083          	ld	ra,8(sp)
    80002534:	00013403          	ld	s0,0(sp)
    80002538:	01010113          	addi	sp,sp,16
    8000253c:	00008067          	ret
        return 0;
    80002540:	00000513          	li	a0,0
}
    80002544:	00008067          	ret

0000000080002548 <_Z21shrink_caches_on_slabP6slab_s>:
{
    80002548:	fe010113          	addi	sp,sp,-32
    8000254c:	00113c23          	sd	ra,24(sp)
    80002550:	00813823          	sd	s0,16(sp)
    80002554:	00913423          	sd	s1,8(sp)
    80002558:	01213023          	sd	s2,0(sp)
    8000255c:	02010413          	addi	s0,sp,32
    80002560:	00050913          	mv	s2,a0
    for(size_t i = 0; i < slab->numOfObjects;i++)
    80002564:	00000493          	li	s1,0
    80002568:	0240006f          	j	8000258c <_Z21shrink_caches_on_slabP6slab_s+0x44>
            void* addr = (void*)((size_t)slab->startAddr + i*slab->owner->obj_size);
    8000256c:	02893503          	ld	a0,40(s2)
    80002570:	01093783          	ld	a5,16(s2)
    80002574:	0607b783          	ld	a5,96(a5)
    80002578:	029787b3          	mul	a5,a5,s1
            kmem_cache_shrink((kmem_cache_t*)addr);
    8000257c:	00f50533          	add	a0,a0,a5
    80002580:	00000097          	auipc	ra,0x0
    80002584:	f90080e7          	jalr	-112(ra) # 80002510 <_Z17kmem_cache_shrinkP12kmem_cache_s>
    for(size_t i = 0; i < slab->numOfObjects;i++)
    80002588:	00148493          	addi	s1,s1,1
    8000258c:	01893783          	ld	a5,24(s2)
    80002590:	00f4fe63          	bgeu	s1,a5,800025ac <_Z21shrink_caches_on_slabP6slab_s+0x64>
        if(checkSetIndex(slab, i))
    80002594:	0004859b          	sext.w	a1,s1
    80002598:	00090513          	mv	a0,s2
    8000259c:	fffff097          	auipc	ra,0xfffff
    800025a0:	ec4080e7          	jalr	-316(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    800025a4:	fe0502e3          	beqz	a0,80002588 <_Z21shrink_caches_on_slabP6slab_s+0x40>
    800025a8:	fc5ff06f          	j	8000256c <_Z21shrink_caches_on_slabP6slab_s+0x24>
}
    800025ac:	01813083          	ld	ra,24(sp)
    800025b0:	01013403          	ld	s0,16(sp)
    800025b4:	00813483          	ld	s1,8(sp)
    800025b8:	00013903          	ld	s2,0(sp)
    800025bc:	02010113          	addi	sp,sp,32
    800025c0:	00008067          	ret

00000000800025c4 <_Z17shrink_all_cachesv>:
{
    800025c4:	fd010113          	addi	sp,sp,-48
    800025c8:	02113423          	sd	ra,40(sp)
    800025cc:	02813023          	sd	s0,32(sp)
    800025d0:	00913c23          	sd	s1,24(sp)
    800025d4:	01213823          	sd	s2,16(sp)
    800025d8:	01313423          	sd	s3,8(sp)
    800025dc:	03010413          	addi	s0,sp,48
    kmem_cache_t* cacheOfCaches = &slabAllocator->cacheOfCaches;
    800025e0:	00006917          	auipc	s2,0x6
    800025e4:	41093903          	ld	s2,1040(s2) # 800089f0 <_ZL13slabAllocator>
    800025e8:	06890993          	addi	s3,s2,104
    slab_t* slab = cacheOfCaches->slabs_full;
    800025ec:	0b093483          	ld	s1,176(s2)
    while(slab != nullptr)
    800025f0:	00048c63          	beqz	s1,80002608 <_Z17shrink_all_cachesv+0x44>
        shrink_caches_on_slab(slab);
    800025f4:	00048513          	mv	a0,s1
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	f50080e7          	jalr	-176(ra) # 80002548 <_Z21shrink_caches_on_slabP6slab_s>
        slab = slab->next;
    80002600:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80002604:	fedff06f          	j	800025f0 <_Z17shrink_all_cachesv+0x2c>
    slab = cacheOfCaches->slabs_partial;
    80002608:	0b893483          	ld	s1,184(s2)
    while(slab != nullptr)
    8000260c:	00048c63          	beqz	s1,80002624 <_Z17shrink_all_cachesv+0x60>
        shrink_caches_on_slab(slab);
    80002610:	00048513          	mv	a0,s1
    80002614:	00000097          	auipc	ra,0x0
    80002618:	f34080e7          	jalr	-204(ra) # 80002548 <_Z21shrink_caches_on_slabP6slab_s>
        slab = slab->next;
    8000261c:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80002620:	fedff06f          	j	8000260c <_Z17shrink_all_cachesv+0x48>
    kmem_cache_shrink(cacheOfCaches);
    80002624:	00098513          	mv	a0,s3
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	ee8080e7          	jalr	-280(ra) # 80002510 <_Z17kmem_cache_shrinkP12kmem_cache_s>
}
    80002630:	02813083          	ld	ra,40(sp)
    80002634:	02013403          	ld	s0,32(sp)
    80002638:	01813483          	ld	s1,24(sp)
    8000263c:	01013903          	ld	s2,16(sp)
    80002640:	00813983          	ld	s3,8(sp)
    80002644:	03010113          	addi	sp,sp,48
    80002648:	00008067          	ret

000000008000264c <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    8000264c:	06050c63          	beqz	a0,800026c4 <_Z16kmem_cache_errorP12kmem_cache_s+0x78>
{
    80002650:	fe010113          	addi	sp,sp,-32
    80002654:	00113c23          	sd	ra,24(sp)
    80002658:	00813823          	sd	s0,16(sp)
    8000265c:	00913423          	sd	s1,8(sp)
    80002660:	02010413          	addi	s0,sp,32
    80002664:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    80002668:	07852783          	lw	a5,120(a0)
    8000266c:	0017f793          	andi	a5,a5,1
    80002670:	02079663          	bnez	a5,8000269c <_Z16kmem_cache_errorP12kmem_cache_s+0x50>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    80002674:	0784a783          	lw	a5,120(s1)
    80002678:	0027f793          	andi	a5,a5,2
    8000267c:	02079a63          	bnez	a5,800026b0 <_Z16kmem_cache_errorP12kmem_cache_s+0x64>
        KConsole::trapPrintString("DESTROY ERROR");

    cachep->errors = NO_ERROR;
    80002680:	0604ac23          	sw	zero,120(s1)

    return cachep->errors;
}
    80002684:	00000513          	li	a0,0
    80002688:	01813083          	ld	ra,24(sp)
    8000268c:	01013403          	ld	s0,16(sp)
    80002690:	00813483          	ld	s1,8(sp)
    80002694:	02010113          	addi	sp,sp,32
    80002698:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    8000269c:	00006517          	auipc	a0,0x6
    800026a0:	bbc50513          	addi	a0,a0,-1092 # 80008258 <CONSOLE_STATUS+0x248>
    800026a4:	00001097          	auipc	ra,0x1
    800026a8:	1a8080e7          	jalr	424(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    800026ac:	fc9ff06f          	j	80002674 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    800026b0:	00006517          	auipc	a0,0x6
    800026b4:	bb850513          	addi	a0,a0,-1096 # 80008268 <CONSOLE_STATUS+0x258>
    800026b8:	00001097          	auipc	ra,0x1
    800026bc:	194080e7          	jalr	404(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    800026c0:	fc1ff06f          	j	80002680 <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
}
    800026c4:	00000513          	li	a0,0
    800026c8:	00008067          	ret

00000000800026cc <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800026cc:	ff010113          	addi	sp,sp,-16
    800026d0:	00113423          	sd	ra,8(sp)
    800026d4:	00813023          	sd	s0,0(sp)
    800026d8:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800026dc:	00002097          	auipc	ra,0x2
    800026e0:	8e0080e7          	jalr	-1824(ra) # 80003fbc <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800026e4:	00006797          	auipc	a5,0x6
    800026e8:	31c7b783          	ld	a5,796(a5) # 80008a00 <_ZN3PCB7runningE>
    800026ec:	0287b703          	ld	a4,40(a5)
    800026f0:	0307b503          	ld	a0,48(a5)
    800026f4:	000700e7          	jalr	a4

    thread_exit_kernel();
    800026f8:	fffff097          	auipc	ra,0xfffff
    800026fc:	b88080e7          	jalr	-1144(ra) # 80001280 <_Z18thread_exit_kernelv>
}
    80002700:	00813083          	ld	ra,8(sp)
    80002704:	00013403          	ld	s0,0(sp)
    80002708:	01010113          	addi	sp,sp,16
    8000270c:	00008067          	ret

0000000080002710 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002710:	ff010113          	addi	sp,sp,-16
    80002714:	00813423          	sd	s0,8(sp)
    80002718:	01010413          	addi	s0,sp,16
    })
    8000271c:	00050023          	sb	zero,0(a0)
    80002720:	00e53c23          	sd	a4,24(a0)
    80002724:	02053023          	sd	zero,32(a0)
    80002728:	02b53423          	sd	a1,40(a0)
    8000272c:	02c53823          	sd	a2,48(a0)
    80002730:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002734:	000017b7          	lui	a5,0x1
    80002738:	00f686b3          	add	a3,a3,a5
    })
    8000273c:	04d53423          	sd	a3,72(a0)
    80002740:	00000797          	auipc	a5,0x0
    80002744:	f8c78793          	addi	a5,a5,-116 # 800026cc <_ZN3PCB6runnerEv>
    80002748:	04f53823          	sd	a5,80(a0)
    8000274c:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    80002750:	00053423          	sd	zero,8(a0)
}
    80002754:	00813403          	ld	s0,8(sp)
    80002758:	01010113          	addi	sp,sp,16
    8000275c:	00008067          	ret

0000000080002760 <_ZN3PCB5startEv>:
{
    80002760:	ff010113          	addi	sp,sp,-16
    80002764:	00113423          	sd	ra,8(sp)
    80002768:	00813023          	sd	s0,0(sp)
    8000276c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002770:	00001097          	auipc	ra,0x1
    80002774:	394080e7          	jalr	916(ra) # 80003b04 <_ZN9Scheduler3putEP3PCB>
}
    80002778:	00813083          	ld	ra,8(sp)
    8000277c:	00013403          	ld	s0,0(sp)
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002788:	fe010113          	addi	sp,sp,-32
    8000278c:	00113c23          	sd	ra,24(sp)
    80002790:	00813823          	sd	s0,16(sp)
    80002794:	00913423          	sd	s1,8(sp)
    80002798:	01213023          	sd	s2,0(sp)
    8000279c:	02010413          	addi	s0,sp,32
    PCB* old = running;
    800027a0:	00006497          	auipc	s1,0x6
    800027a4:	2604b483          	ld	s1,608(s1) # 80008a00 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800027a8:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    800027ac:	00100793          	li	a5,1
    800027b0:	04f70a63          	beq	a4,a5,80002804 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);

    PCB::running = Scheduler::get();
    800027b4:	00001097          	auipc	ra,0x1
    800027b8:	3a4080e7          	jalr	932(ra) # 80003b58 <_ZN9Scheduler3getEv>
    800027bc:	00006917          	auipc	s2,0x6
    800027c0:	24490913          	addi	s2,s2,580 # 80008a00 <_ZN3PCB7runningE>
    800027c4:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800027c8:	00100793          	li	a5,1
    800027cc:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800027d0:	00002097          	auipc	ra,0x2
    800027d4:	dc8080e7          	jalr	-568(ra) # 80004598 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800027d8:	00093583          	ld	a1,0(s2)
    800027dc:	04858593          	addi	a1,a1,72
    800027e0:	04848513          	addi	a0,s1,72
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	a34080e7          	jalr	-1484(ra) # 80001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	00013903          	ld	s2,0(sp)
    800027fc:	02010113          	addi	sp,sp,32
    80002800:	00008067          	ret
        Scheduler::put(old);
    80002804:	00048513          	mv	a0,s1
    80002808:	00001097          	auipc	ra,0x1
    8000280c:	2fc080e7          	jalr	764(ra) # 80003b04 <_ZN9Scheduler3putEP3PCB>
    80002810:	fa5ff06f          	j	800027b4 <_ZN3PCB8dispatchEv+0x2c>

0000000080002814 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00113423          	sd	ra,8(sp)
    8000281c:	00813023          	sd	s0,0(sp)
    80002820:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    80002824:	00006797          	auipc	a5,0x6
    80002828:	16c7b783          	ld	a5,364(a5) # 80008990 <_GLOBAL_OFFSET_TABLE_+0xa8>
    8000282c:	0007b503          	ld	a0,0(a5)
    80002830:	fffff097          	auipc	ra,0xfffff
    80002834:	3b4080e7          	jalr	948(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80002838:	00813083          	ld	ra,8(sp)
    8000283c:	00013403          	ld	s0,0(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00113423          	sd	ra,8(sp)
    80002850:	00813023          	sd	s0,0(sp)
    80002854:	01010413          	addi	s0,sp,16
    80002858:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    8000285c:	00006797          	auipc	a5,0x6
    80002860:	1347b783          	ld	a5,308(a5) # 80008990 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002864:	0007b503          	ld	a0,0(a5)
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	5bc080e7          	jalr	1468(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80002870:	00813083          	ld	ra,8(sp)
    80002874:	00013403          	ld	s0,0(sp)
    80002878:	01010113          	addi	sp,sp,16
    8000287c:	00008067          	ret

0000000080002880 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002880:	ff010113          	addi	sp,sp,-16
    80002884:	00113423          	sd	ra,8(sp)
    80002888:	00813023          	sd	s0,0(sp)
    8000288c:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80002890:	03853503          	ld	a0,56(a0)
    80002894:	00002097          	auipc	ra,0x2
    80002898:	470080e7          	jalr	1136(ra) # 80004d04 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000289c:	00813083          	ld	ra,8(sp)
    800028a0:	00013403          	ld	s0,0(sp)
    800028a4:	01010113          	addi	sp,sp,16
    800028a8:	00008067          	ret

00000000800028ac <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800028ac:	fe010113          	addi	sp,sp,-32
    800028b0:	00113c23          	sd	ra,24(sp)
    800028b4:	00813823          	sd	s0,16(sp)
    800028b8:	00913423          	sd	s1,8(sp)
    800028bc:	01213023          	sd	s2,0(sp)
    800028c0:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800028c4:	06000513          	li	a0,96
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	f4c080e7          	jalr	-180(ra) # 80002814 <_ZN3PCBnwEm>
    800028d0:	00050493          	mv	s1,a0
    800028d4:	00050e63          	beqz	a0,800028f0 <_ZN3PCB10initializeEv+0x44>
    800028d8:	00000713          	li	a4,0
    800028dc:	00000693          	li	a3,0
    800028e0:	00000613          	li	a2,0
    800028e4:	00000593          	li	a1,0
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	e28080e7          	jalr	-472(ra) # 80002710 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800028f0:	00100793          	li	a5,1
    800028f4:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800028f8:	00006797          	auipc	a5,0x6
    800028fc:	1097b423          	sd	s1,264(a5) # 80008a00 <_ZN3PCB7runningE>
    80002900:	00100793          	li	a5,1
    80002904:	04f4a023          	sw	a5,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              kmalloc(DEFAULT_STACK_SIZE),
    80002908:	00001537          	lui	a0,0x1
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	8fc080e7          	jalr	-1796(ra) # 80002208 <_Z7kmallocm>
    80002914:	00050913          	mv	s2,a0
//                              MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                              DEFAULT_TIME_SLICE);
    80002918:	06000513          	li	a0,96
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	ef8080e7          	jalr	-264(ra) # 80002814 <_ZN3PCBnwEm>
    80002924:	00050493          	mv	s1,a0
    80002928:	02050063          	beqz	a0,80002948 <_ZN3PCB10initializeEv+0x9c>
    8000292c:	00200713          	li	a4,2
    80002930:	00090693          	mv	a3,s2
    80002934:	00000613          	li	a2,0
    80002938:	00006597          	auipc	a1,0x6
    8000293c:	0185b583          	ld	a1,24(a1) # 80008950 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002940:	00000097          	auipc	ra,0x0
    80002944:	dd0080e7          	jalr	-560(ra) # 80002710 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    80002948:	00006797          	auipc	a5,0x6
    8000294c:	0b878793          	addi	a5,a5,184 # 80008a00 <_ZN3PCB7runningE>
    80002950:	0097b423          	sd	s1,8(a5)
    PCB::consolePCB->systemThread = true;
    80002954:	00100713          	li	a4,1
    80002958:	00e48023          	sb	a4,0(s1)
    PCB::consolePCB->start();
    8000295c:	0087b503          	ld	a0,8(a5)
    80002960:	00000097          	auipc	ra,0x0
    80002964:	e00080e7          	jalr	-512(ra) # 80002760 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
//                           kmalloc(DEFAULT_STACK_SIZE),
                           MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
    80002968:	00001537          	lui	a0,0x1
    8000296c:	00002097          	auipc	ra,0x2
    80002970:	328080e7          	jalr	808(ra) # 80004c94 <_ZN15MemoryAllocator7kmallocEm>
    80002974:	00050913          	mv	s2,a0
                           DEFAULT_TIME_SLICE);
    80002978:	06000513          	li	a0,96
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	e98080e7          	jalr	-360(ra) # 80002814 <_ZN3PCBnwEm>
    80002984:	00050493          	mv	s1,a0
    80002988:	02050063          	beqz	a0,800029a8 <_ZN3PCB10initializeEv+0xfc>
    8000298c:	00200713          	li	a4,2
    80002990:	00090693          	mv	a3,s2
    80002994:	00000613          	li	a2,0
    80002998:	00006597          	auipc	a1,0x6
    8000299c:	fc05b583          	ld	a1,-64(a1) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x70>
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	d70080e7          	jalr	-656(ra) # 80002710 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
    800029a8:	00006797          	auipc	a5,0x6
    800029ac:	0697b423          	sd	s1,104(a5) # 80008a10 <_ZN3PCB7userPCBE>
    PCB::userPCB->start();
    800029b0:	00048513          	mv	a0,s1
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	dac080e7          	jalr	-596(ra) # 80002760 <_ZN3PCB5startEv>
}
    800029bc:	01813083          	ld	ra,24(sp)
    800029c0:	01013403          	ld	s0,16(sp)
    800029c4:	00813483          	ld	s1,8(sp)
    800029c8:	00013903          	ld	s2,0(sp)
    800029cc:	02010113          	addi	sp,sp,32
    800029d0:	00008067          	ret

00000000800029d4 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800029d4:	ff010113          	addi	sp,sp,-16
    800029d8:	00813423          	sd	s0,8(sp)
    800029dc:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800029e0:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800029e4:	ffd50513          	addi	a0,a0,-3
}
    800029e8:	00153513          	seqz	a0,a0
    800029ec:	00813403          	ld	s0,8(sp)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret

00000000800029f8 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00113423          	sd	ra,8(sp)
    80002a00:	00813023          	sd	s0,0(sp)
    80002a04:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002a08:	00006797          	auipc	a5,0x6
    80002a0c:	ff878793          	addi	a5,a5,-8 # 80008a00 <_ZN3PCB7runningE>
    80002a10:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    80002a14:	0007b783          	ld	a5,0(a5)
    80002a18:	00300713          	li	a4,3
    80002a1c:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	d68080e7          	jalr	-664(ra) # 80002788 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002a28:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002a2c:	00002097          	auipc	ra,0x2
    80002a30:	b34080e7          	jalr	-1228(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a34:	00813083          	ld	ra,8(sp)
    80002a38:	00013403          	ld	s0,0(sp)
    80002a3c:	01010113          	addi	sp,sp,16
    80002a40:	00008067          	ret

0000000080002a44 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002a44:	ff010113          	addi	sp,sp,-16
    80002a48:	00113423          	sd	ra,8(sp)
    80002a4c:	00813023          	sd	s0,0(sp)
    80002a50:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002a54:	00006797          	auipc	a5,0x6
    80002a58:	fc07b223          	sd	zero,-60(a5) # 80008a18 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	d2c080e7          	jalr	-724(ra) # 80002788 <_ZN3PCB8dispatchEv>
}
    80002a64:	00813083          	ld	ra,8(sp)
    80002a68:	00013403          	ld	s0,0(sp)
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret

0000000080002a74 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002a74:	ff010113          	addi	sp,sp,-16
    80002a78:	00113423          	sd	ra,8(sp)
    80002a7c:	00813023          	sd	s0,0(sp)
    80002a80:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002a84:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002a88:	00006717          	auipc	a4,0x6
    80002a8c:	f7870713          	addi	a4,a4,-136 # 80008a00 <_ZN3PCB7runningE>
    80002a90:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002a94:	00073703          	ld	a4,0(a4)
    80002a98:	00006697          	auipc	a3,0x6
    80002a9c:	eb06b683          	ld	a3,-336(a3) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002aa0:	0006b683          	ld	a3,0(a3)
    80002aa4:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002aa8:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002aac:	00001097          	auipc	ra,0x1
    80002ab0:	edc080e7          	jalr	-292(ra) # 80003988 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	cd4080e7          	jalr	-812(ra) # 80002788 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002abc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002ac0:	00002097          	auipc	ra,0x2
    80002ac4:	aa0080e7          	jalr	-1376(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002ac8:	00813083          	ld	ra,8(sp)
    80002acc:	00013403          	ld	s0,0(sp)
    80002ad0:	01010113          	addi	sp,sp,16
    80002ad4:	00008067          	ret

0000000080002ad8 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002ad8:	fd010113          	addi	sp,sp,-48
    80002adc:	02113423          	sd	ra,40(sp)
    80002ae0:	02813023          	sd	s0,32(sp)
    80002ae4:	00913c23          	sd	s1,24(sp)
    80002ae8:	01213823          	sd	s2,16(sp)
    80002aec:	01313423          	sd	s3,8(sp)
    80002af0:	01413023          	sd	s4,0(sp)
    80002af4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002af8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002afc:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002b00:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002b04:	06000513          	li	a0,96
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	d0c080e7          	jalr	-756(ra) # 80002814 <_ZN3PCBnwEm>
    80002b10:	00050493          	mv	s1,a0
    80002b14:	02050063          	beqz	a0,80002b34 <_ZN3PCB19threadCreateHandlerEv+0x5c>
    80002b18:	00200713          	li	a4,2
    80002b1c:	00006697          	auipc	a3,0x6
    80002b20:	f046b683          	ld	a3,-252(a3) # 80008a20 <_ZN3PCB10savedRegA4E>
    80002b24:	000a0613          	mv	a2,s4
    80002b28:	00098593          	mv	a1,s3
    80002b2c:	00000097          	auipc	ra,0x0
    80002b30:	be4080e7          	jalr	-1052(ra) # 80002710 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002b34:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr) {
    80002b38:	02048e63          	beqz	s1,80002b74 <_ZN3PCB19threadCreateHandlerEv+0x9c>
        __asm__ volatile("li a0, 0x01");
    }
    else
    {
        newPCB->start();
    80002b3c:	00048513          	mv	a0,s1
    80002b40:	00000097          	auipc	ra,0x0
    80002b44:	c20080e7          	jalr	-992(ra) # 80002760 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002b48:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002b4c:	00002097          	auipc	ra,0x2
    80002b50:	a14080e7          	jalr	-1516(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b54:	02813083          	ld	ra,40(sp)
    80002b58:	02013403          	ld	s0,32(sp)
    80002b5c:	01813483          	ld	s1,24(sp)
    80002b60:	01013903          	ld	s2,16(sp)
    80002b64:	00813983          	ld	s3,8(sp)
    80002b68:	00013a03          	ld	s4,0(sp)
    80002b6c:	03010113          	addi	sp,sp,48
    80002b70:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002b74:	00100513          	li	a0,1
    80002b78:	fd5ff06f          	j	80002b4c <_ZN3PCB19threadCreateHandlerEv+0x74>

0000000080002b7c <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002b7c:	ff010113          	addi	sp,sp,-16
    80002b80:	00113423          	sd	ra,8(sp)
    80002b84:	00813023          	sd	s0,0(sp)
    80002b88:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002b8c:	00058513          	mv	a0,a1
    if(pcb != nullptr)
    80002b90:	02050463          	beqz	a0,80002bb8 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	bcc080e7          	jalr	-1076(ra) # 80002760 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002b9c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x01");
    }
    Riscv::w_a0_sscratch();
    80002ba0:	00002097          	auipc	ra,0x2
    80002ba4:	9c0080e7          	jalr	-1600(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002ba8:	00813083          	ld	ra,8(sp)
    80002bac:	00013403          	ld	s0,0(sp)
    80002bb0:	01010113          	addi	sp,sp,16
    80002bb4:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002bb8:	00100513          	li	a0,1
    80002bbc:	fe5ff06f          	j	80002ba0 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002bc0 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002bc0:	fd010113          	addi	sp,sp,-48
    80002bc4:	02113423          	sd	ra,40(sp)
    80002bc8:	02813023          	sd	s0,32(sp)
    80002bcc:	00913c23          	sd	s1,24(sp)
    80002bd0:	01213823          	sd	s2,16(sp)
    80002bd4:	01313423          	sd	s3,8(sp)
    80002bd8:	01413023          	sd	s4,0(sp)
    80002bdc:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002be0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002be4:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002be8:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002bec:	06000513          	li	a0,96
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	c24080e7          	jalr	-988(ra) # 80002814 <_ZN3PCBnwEm>
    80002bf8:	00050493          	mv	s1,a0
    80002bfc:	02050063          	beqz	a0,80002c1c <_ZN3PCB20threadMakePCBHandlerEv+0x5c>
    80002c00:	00200713          	li	a4,2
    80002c04:	00006697          	auipc	a3,0x6
    80002c08:	e1c6b683          	ld	a3,-484(a3) # 80008a20 <_ZN3PCB10savedRegA4E>
    80002c0c:	000a0613          	mv	a2,s4
    80002c10:	00098593          	mv	a1,s3
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	afc080e7          	jalr	-1284(ra) # 80002710 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002c1c:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr)
    80002c20:	02048863          	beqz	s1,80002c50 <_ZN3PCB20threadMakePCBHandlerEv+0x90>
    {
        __asm__ volatile("li a0, 0x01");
    }
    else
        __asm__ volatile("li a0, 0");
    80002c24:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002c28:	00002097          	auipc	ra,0x2
    80002c2c:	938080e7          	jalr	-1736(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c30:	02813083          	ld	ra,40(sp)
    80002c34:	02013403          	ld	s0,32(sp)
    80002c38:	01813483          	ld	s1,24(sp)
    80002c3c:	01013903          	ld	s2,16(sp)
    80002c40:	00813983          	ld	s3,8(sp)
    80002c44:	00013a03          	ld	s4,0(sp)
    80002c48:	03010113          	addi	sp,sp,48
    80002c4c:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002c50:	00100513          	li	a0,1
    80002c54:	fd5ff06f          	j	80002c28 <_ZN3PCB20threadMakePCBHandlerEv+0x68>

0000000080002c58 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002c58:	fe010113          	addi	sp,sp,-32
    80002c5c:	00113c23          	sd	ra,24(sp)
    80002c60:	00813823          	sd	s0,16(sp)
    80002c64:	00913423          	sd	s1,8(sp)
    80002c68:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c6c:	00058493          	mv	s1,a1
    if(pcb != nullptr)
    80002c70:	02048e63          	beqz	s1,80002cac <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002c74:	00048513          	mv	a0,s1
    80002c78:	00000097          	auipc	ra,0x0
    80002c7c:	c08080e7          	jalr	-1016(ra) # 80002880 <_ZN3PCBD1Ev>
    80002c80:	00048513          	mv	a0,s1
    80002c84:	00000097          	auipc	ra,0x0
    80002c88:	bc4080e7          	jalr	-1084(ra) # 80002848 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002c8c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002c90:	00002097          	auipc	ra,0x2
    80002c94:	8d0080e7          	jalr	-1840(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c98:	01813083          	ld	ra,24(sp)
    80002c9c:	01013403          	ld	s0,16(sp)
    80002ca0:	00813483          	ld	s1,8(sp)
    80002ca4:	02010113          	addi	sp,sp,32
    80002ca8:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002cac:	00100513          	li	a0,1
    80002cb0:	fe1ff06f          	j	80002c90 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002cb4 <_Z12getBlockAddrm>:
    addBlocks(addr, level); //adds free blocks
    buddy->numOfFreeBlocks += (1 << level);
}

size_t getBlockAddr(size_t addr)
{
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00813423          	sd	s0,8(sp)
    80002cbc:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002cc0:	fffff7b7          	lui	a5,0xfffff
    80002cc4:	00f57533          	and	a0,a0,a5
    80002cc8:	00813403          	ld	s0,8(sp)
    80002ccc:	01010113          	addi	sp,sp,16
    80002cd0:	00008067          	ret

0000000080002cd4 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002cd4:	ff010113          	addi	sp,sp,-16
    80002cd8:	00113423          	sd	ra,8(sp)
    80002cdc:	00813023          	sd	s0,0(sp)
    80002ce0:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	fd0080e7          	jalr	-48(ra) # 80002cb4 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002cec:	000017b7          	lui	a5,0x1
    80002cf0:	00f50533          	add	a0,a0,a5
    80002cf4:	00813083          	ld	ra,8(sp)
    80002cf8:	00013403          	ld	s0,0(sp)
    80002cfc:	01010113          	addi	sp,sp,16
    80002d00:	00008067          	ret

0000000080002d04 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002d04:	ff010113          	addi	sp,sp,-16
    80002d08:	00813423          	sd	s0,8(sp)
    80002d0c:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002d10:	00000713          	li	a4,0
    size_t x = 1;
    80002d14:	00100793          	li	a5,1
    while(x <= num)
    80002d18:	00f56863          	bltu	a0,a5,80002d28 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002d1c:	00170713          	addi	a4,a4,1
        x<<=1;
    80002d20:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002d24:	ff5ff06f          	j	80002d18 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    80002d28:	fff70513          	addi	a0,a4,-1
    80002d2c:	00813403          	ld	s0,8(sp)
    80002d30:	01010113          	addi	sp,sp,16
    80002d34:	00008067          	ret

0000000080002d38 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002d38:	ff010113          	addi	sp,sp,-16
    80002d3c:	00813423          	sd	s0,8(sp)
    80002d40:	01010413          	addi	s0,sp,16
    80002d44:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002d48:	00000513          	li	a0,0
    size_t x = 1;
    80002d4c:	00100793          	li	a5,1
    while(x < num)
    80002d50:	00e7f863          	bgeu	a5,a4,80002d60 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002d54:	00150513          	addi	a0,a0,1
        x<<=1;
    80002d58:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002d5c:	ff5ff06f          	j	80002d50 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002d60:	00813403          	ld	s0,8(sp)
    80002d64:	01010113          	addi	sp,sp,16
    80002d68:	00008067          	ret

0000000080002d6c <_Z15addBlockToLevelPvm>:
    addBlockToLevel(addr, level);
}

//adds free block to level
void addBlockToLevel(void* addr, size_t level)
{
    80002d6c:	ff010113          	addi	sp,sp,-16
    80002d70:	00813423          	sd	s0,8(sp)
    80002d74:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002d78:	00053023          	sd	zero,0(a0)
    if(buddy->bucket[level].first == nullptr)
    80002d7c:	00006717          	auipc	a4,0x6
    80002d80:	cac73703          	ld	a4,-852(a4) # 80008a28 <_ZL5buddy>
    80002d84:	00258793          	addi	a5,a1,2
    80002d88:	00479793          	slli	a5,a5,0x4
    80002d8c:	00f707b3          	add	a5,a4,a5
    80002d90:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002d94:	02078463          	beqz	a5,80002dbc <_Z15addBlockToLevelPvm+0x50>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002d98:	00258593          	addi	a1,a1,2
    80002d9c:	00459593          	slli	a1,a1,0x4
    80002da0:	00b705b3          	add	a1,a4,a1
    80002da4:	0085b783          	ld	a5,8(a1)
    80002da8:	00a7b023          	sd	a0,0(a5)
        buddy->bucket[level].last = newBlock;
    80002dac:	00a5b423          	sd	a0,8(a1)
    }
}
    80002db0:	00813403          	ld	s0,8(sp)
    80002db4:	01010113          	addi	sp,sp,16
    80002db8:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002dbc:	00258593          	addi	a1,a1,2
    80002dc0:	00459793          	slli	a5,a1,0x4
    80002dc4:	00f707b3          	add	a5,a4,a5
    80002dc8:	00a7b423          	sd	a0,8(a5)
    80002dcc:	00a7b023          	sd	a0,0(a5)
    80002dd0:	fe1ff06f          	j	80002db0 <_Z15addBlockToLevelPvm+0x44>

0000000080002dd4 <_Z17getBuddyBlockAddrPvm>:

size_t getBuddyBlockAddr(void* addr, size_t level)
{
    80002dd4:	ff010113          	addi	sp,sp,-16
    80002dd8:	00813423          	sd	s0,8(sp)
    80002ddc:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002de0:	000017b7          	lui	a5,0x1
    80002de4:	00b795bb          	sllw	a1,a5,a1
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002de8:	00006797          	auipc	a5,0x6
    80002dec:	c407b783          	ld	a5,-960(a5) # 80008a28 <_ZL5buddy>
    80002df0:	0087b783          	ld	a5,8(a5)
    80002df4:	40f507b3          	sub	a5,a0,a5
    if(diff & off)
    80002df8:	00f5f7b3          	and	a5,a1,a5
    80002dfc:	00078a63          	beqz	a5,80002e10 <_Z17getBuddyBlockAddrPvm+0x3c>
        return (size_t)addr - diff;
    80002e00:	40b50533          	sub	a0,a0,a1
    else
        return (size_t)addr + diff;
}
    80002e04:	00813403          	ld	s0,8(sp)
    80002e08:	01010113          	addi	sp,sp,16
    80002e0c:	00008067          	ret
        return (size_t)addr + diff;
    80002e10:	00b50533          	add	a0,a0,a1
    80002e14:	ff1ff06f          	j	80002e04 <_Z17getBuddyBlockAddrPvm+0x30>

0000000080002e18 <_Z5splitPvmmb>:
{
    80002e18:	fd010113          	addi	sp,sp,-48
    80002e1c:	02113423          	sd	ra,40(sp)
    80002e20:	02813023          	sd	s0,32(sp)
    80002e24:	00913c23          	sd	s1,24(sp)
    80002e28:	01213823          	sd	s2,16(sp)
    80002e2c:	01313423          	sd	s3,8(sp)
    80002e30:	03010413          	addi	s0,sp,48
    80002e34:	00050993          	mv	s3,a0
    if(!splitMore)
    80002e38:	06068263          	beqz	a3,80002e9c <_Z5splitPvmmb+0x84>
    80002e3c:	00058913          	mv	s2,a1
        if(currLevel == finalLevel)
    80002e40:	04b60063          	beq	a2,a1,80002e80 <_Z5splitPvmmb+0x68>
        size_t buddyBlock = getBuddyBlockAddr(addr, currLevel - 1); // currLevel - 1 for next step
    80002e44:	fff60493          	addi	s1,a2,-1
    80002e48:	00048593          	mv	a1,s1
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	f88080e7          	jalr	-120(ra) # 80002dd4 <_Z17getBuddyBlockAddrPvm>
        split((void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002e54:	00000693          	li	a3,0
    80002e58:	00048613          	mv	a2,s1
    80002e5c:	00090593          	mv	a1,s2
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	fb8080e7          	jalr	-72(ra) # 80002e18 <_Z5splitPvmmb>
        split(addr, finalLevel, currLevel - 1, true); // continue splitting
    80002e68:	00100693          	li	a3,1
    80002e6c:	00048613          	mv	a2,s1
    80002e70:	00090593          	mv	a1,s2
    80002e74:	00098513          	mv	a0,s3
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	fa0080e7          	jalr	-96(ra) # 80002e18 <_Z5splitPvmmb>
}
    80002e80:	02813083          	ld	ra,40(sp)
    80002e84:	02013403          	ld	s0,32(sp)
    80002e88:	01813483          	ld	s1,24(sp)
    80002e8c:	01013903          	ld	s2,16(sp)
    80002e90:	00813983          	ld	s3,8(sp)
    80002e94:	03010113          	addi	sp,sp,48
    80002e98:	00008067          	ret
        addBlockToLevel(addr, currLevel);
    80002e9c:	00060593          	mv	a1,a2
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	ecc080e7          	jalr	-308(ra) # 80002d6c <_Z15addBlockToLevelPvm>
    80002ea8:	fd9ff06f          	j	80002e80 <_Z5splitPvmmb+0x68>

0000000080002eac <_Z11buddy_allocm>:
{
    80002eac:	fe010113          	addi	sp,sp,-32
    80002eb0:	00113c23          	sd	ra,24(sp)
    80002eb4:	00813823          	sd	s0,16(sp)
    80002eb8:	00913423          	sd	s1,8(sp)
    80002ebc:	01213023          	sd	s2,0(sp)
    80002ec0:	02010413          	addi	s0,sp,32
    size_t level = getDeg2Ceil(numOfBlocks);
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	e74080e7          	jalr	-396(ra) # 80002d38 <_Z11getDeg2Ceilm>
    80002ecc:	00050913          	mv	s2,a0
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002ed0:	00050613          	mv	a2,a0
    80002ed4:	00006717          	auipc	a4,0x6
    80002ed8:	b5473703          	ld	a4,-1196(a4) # 80008a28 <_ZL5buddy>
    80002edc:	01873783          	ld	a5,24(a4)
    80002ee0:	08c7e063          	bltu	a5,a2,80002f60 <_Z11buddy_allocm+0xb4>
        if(buddy->bucket[i].first != nullptr)
    80002ee4:	00260793          	addi	a5,a2,2
    80002ee8:	00479793          	slli	a5,a5,0x4
    80002eec:	00f707b3          	add	a5,a4,a5
    80002ef0:	0007b483          	ld	s1,0(a5)
    80002ef4:	00049663          	bnez	s1,80002f00 <_Z11buddy_allocm+0x54>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002ef8:	00160613          	addi	a2,a2,1
    80002efc:	fd9ff06f          	j	80002ed4 <_Z11buddy_allocm+0x28>
            buddy->bucket[i].first = ret->next;
    80002f00:	0004b683          	ld	a3,0(s1)
    80002f04:	00260793          	addi	a5,a2,2
    80002f08:	00479793          	slli	a5,a5,0x4
    80002f0c:	00f707b3          	add	a5,a4,a5
    80002f10:	00d7b023          	sd	a3,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002f14:	02068c63          	beqz	a3,80002f4c <_Z11buddy_allocm+0xa0>
            split((void*)ret, level, i, true);
    80002f18:	00100693          	li	a3,1
    80002f1c:	00090593          	mv	a1,s2
    80002f20:	00048513          	mv	a0,s1
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	ef4080e7          	jalr	-268(ra) # 80002e18 <_Z5splitPvmmb>
            buddy->numOfFreeBlocks-= (1 << level);
    80002f2c:	00006797          	auipc	a5,0x6
    80002f30:	afc7b783          	ld	a5,-1284(a5) # 80008a28 <_ZL5buddy>
    80002f34:	00100513          	li	a0,1
    80002f38:	0125153b          	sllw	a0,a0,s2
    80002f3c:	0107b903          	ld	s2,16(a5)
    80002f40:	40a90933          	sub	s2,s2,a0
    80002f44:	0127b823          	sd	s2,16(a5)
            return ret;
    80002f48:	01c0006f          	j	80002f64 <_Z11buddy_allocm+0xb8>
                buddy->bucket[i].last = nullptr;
    80002f4c:	00260793          	addi	a5,a2,2
    80002f50:	00479793          	slli	a5,a5,0x4
    80002f54:	00f70733          	add	a4,a4,a5
    80002f58:	00073423          	sd	zero,8(a4)
    80002f5c:	fbdff06f          	j	80002f18 <_Z11buddy_allocm+0x6c>
    return nullptr;
    80002f60:	00000493          	li	s1,0
}
    80002f64:	00048513          	mv	a0,s1
    80002f68:	01813083          	ld	ra,24(sp)
    80002f6c:	01013403          	ld	s0,16(sp)
    80002f70:	00813483          	ld	s1,8(sp)
    80002f74:	00013903          	ld	s2,0(sp)
    80002f78:	02010113          	addi	sp,sp,32
    80002f7c:	00008067          	ret

0000000080002f80 <_Z9addBlocksPvm>:
{
    80002f80:	fd010113          	addi	sp,sp,-48
    80002f84:	02113423          	sd	ra,40(sp)
    80002f88:	02813023          	sd	s0,32(sp)
    80002f8c:	00913c23          	sd	s1,24(sp)
    80002f90:	01213823          	sd	s2,16(sp)
    80002f94:	01313423          	sd	s3,8(sp)
    80002f98:	03010413          	addi	s0,sp,48
    80002f9c:	00050913          	mv	s2,a0
    80002fa0:	00058493          	mv	s1,a1
    if(level == buddy->maxLevel)
    80002fa4:	00006997          	auipc	s3,0x6
    80002fa8:	a849b983          	ld	s3,-1404(s3) # 80008a28 <_ZL5buddy>
    80002fac:	0189b783          	ld	a5,24(s3)
    80002fb0:	02b78a63          	beq	a5,a1,80002fe4 <_Z9addBlocksPvm+0x64>
    size_t buddyBlockAddr = getBuddyBlockAddr(addr,level);
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	e20080e7          	jalr	-480(ra) # 80002dd4 <_Z17getBuddyBlockAddrPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002fbc:	00248793          	addi	a5,s1,2
    80002fc0:	00479793          	slli	a5,a5,0x4
    80002fc4:	00f987b3          	add	a5,s3,a5
    80002fc8:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002fcc:	00000713          	li	a4,0
    while(curr != nullptr)
    80002fd0:	0a078863          	beqz	a5,80003080 <_Z9addBlocksPvm+0x100>
        if((size_t)curr == buddyBlockAddr)
    80002fd4:	00a78e63          	beq	a5,a0,80002ff0 <_Z9addBlocksPvm+0x70>
        prev = curr;
    80002fd8:	00078713          	mv	a4,a5
        curr = curr->next;
    80002fdc:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002fe0:	ff1ff06f          	j	80002fd0 <_Z9addBlocksPvm+0x50>
        addBlockToLevel(addr, level);
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	d88080e7          	jalr	-632(ra) # 80002d6c <_Z15addBlockToLevelPvm>
        return;
    80002fec:	0a40006f          	j	80003090 <_Z9addBlocksPvm+0x110>
            if(prev != nullptr)
    80002ff0:	04070663          	beqz	a4,8000303c <_Z9addBlocksPvm+0xbc>
                prev->next = curr->next;
    80002ff4:	0007b683          	ld	a3,0(a5)
    80002ff8:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002ffc:	00248693          	addi	a3,s1,2
    80003000:	00469693          	slli	a3,a3,0x4
    80003004:	00d986b3          	add	a3,s3,a3
    80003008:	0086b683          	ld	a3,8(a3)
    8000300c:	00f68e63          	beq	a3,a5,80003028 <_Z9addBlocksPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(addr, level + 1); //merge two chunks
    80003010:	06a97063          	bgeu	s2,a0,80003070 <_Z9addBlocksPvm+0xf0>
    80003014:	00148593          	addi	a1,s1,1
    80003018:	00090513          	mv	a0,s2
    8000301c:	00000097          	auipc	ra,0x0
    80003020:	f64080e7          	jalr	-156(ra) # 80002f80 <_Z9addBlocksPvm>
    80003024:	06c0006f          	j	80003090 <_Z9addBlocksPvm+0x110>
                    buddy->bucket[level].last = prev;
    80003028:	00248793          	addi	a5,s1,2
    8000302c:	00479793          	slli	a5,a5,0x4
    80003030:	00f989b3          	add	s3,s3,a5
    80003034:	00e9b423          	sd	a4,8(s3)
    80003038:	fd9ff06f          	j	80003010 <_Z9addBlocksPvm+0x90>
                if(curr->next == nullptr)
    8000303c:	0007b783          	ld	a5,0(a5)
    80003040:	00078c63          	beqz	a5,80003058 <_Z9addBlocksPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80003044:	00248713          	addi	a4,s1,2
    80003048:	00471713          	slli	a4,a4,0x4
    8000304c:	00e989b3          	add	s3,s3,a4
    80003050:	00f9b023          	sd	a5,0(s3)
    80003054:	fbdff06f          	j	80003010 <_Z9addBlocksPvm+0x90>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80003058:	00248793          	addi	a5,s1,2
    8000305c:	00479793          	slli	a5,a5,0x4
    80003060:	00f989b3          	add	s3,s3,a5
    80003064:	0009b423          	sd	zero,8(s3)
    80003068:	0009b023          	sd	zero,0(s3)
    8000306c:	fa5ff06f          	j	80003010 <_Z9addBlocksPvm+0x90>
            else addBlocks((void*)buddyBlockAddr, level + 1); //merge two chunks
    80003070:	00148593          	addi	a1,s1,1
    80003074:	00000097          	auipc	ra,0x0
    80003078:	f0c080e7          	jalr	-244(ra) # 80002f80 <_Z9addBlocksPvm>
            return;
    8000307c:	0140006f          	j	80003090 <_Z9addBlocksPvm+0x110>
    addBlockToLevel(addr, level);
    80003080:	00048593          	mv	a1,s1
    80003084:	00090513          	mv	a0,s2
    80003088:	00000097          	auipc	ra,0x0
    8000308c:	ce4080e7          	jalr	-796(ra) # 80002d6c <_Z15addBlockToLevelPvm>
}
    80003090:	02813083          	ld	ra,40(sp)
    80003094:	02013403          	ld	s0,32(sp)
    80003098:	01813483          	ld	s1,24(sp)
    8000309c:	01013903          	ld	s2,16(sp)
    800030a0:	00813983          	ld	s3,8(sp)
    800030a4:	03010113          	addi	sp,sp,48
    800030a8:	00008067          	ret

00000000800030ac <_Z10buddy_initPvm>:
{
    800030ac:	fd010113          	addi	sp,sp,-48
    800030b0:	02113423          	sd	ra,40(sp)
    800030b4:	02813023          	sd	s0,32(sp)
    800030b8:	00913c23          	sd	s1,24(sp)
    800030bc:	01213823          	sd	s2,16(sp)
    800030c0:	01313423          	sd	s3,8(sp)
    800030c4:	03010413          	addi	s0,sp,48
    800030c8:	00058913          	mv	s2,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    800030cc:	00050993          	mv	s3,a0
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	be4080e7          	jalr	-1052(ra) # 80002cb4 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    800030d8:	00a98a63          	beq	s3,a0,800030ec <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	bf8080e7          	jalr	-1032(ra) # 80002cd4 <_Z16getNextBlockAddrm>
    800030e4:	00050993          	mv	s3,a0
        numOfBlocks--; //have to discard one block
    800030e8:	fff90913          	addi	s2,s2,-1
    numOfBlocks--; // take one block for buddy metadata
    800030ec:	fff90913          	addi	s2,s2,-1
    buddy = (buddyAllocator*)buddyAddr;
    800030f0:	00098493          	mv	s1,s3
    800030f4:	00006797          	auipc	a5,0x6
    800030f8:	9337ba23          	sd	s3,-1740(a5) # 80008a28 <_ZL5buddy>
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    800030fc:	00098513          	mv	a0,s3
    80003100:	00000097          	auipc	ra,0x0
    80003104:	bd4080e7          	jalr	-1068(ra) # 80002cd4 <_Z16getNextBlockAddrm>
    80003108:	00a9b423          	sd	a0,8(s3)
    buddy->numOfBlocks = numOfBlocks;
    8000310c:	0129b023          	sd	s2,0(s3)
    buddy->numOfFreeBlocks = numOfBlocks;
    80003110:	0129b823          	sd	s2,16(s3)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80003114:	00090513          	mv	a0,s2
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	bec080e7          	jalr	-1044(ra) # 80002d04 <_Z12getDeg2Floorm>
    80003120:	00a9bc23          	sd	a0,24(s3)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80003124:	00000713          	li	a4,0
    80003128:	0184b783          	ld	a5,24(s1)
    8000312c:	02e7e063          	bltu	a5,a4,8000314c <_Z10buddy_initPvm+0xa0>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80003130:	00270793          	addi	a5,a4,2
    80003134:	00479793          	slli	a5,a5,0x4
    80003138:	00f487b3          	add	a5,s1,a5
    8000313c:	0007b423          	sd	zero,8(a5)
    80003140:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80003144:	00170713          	addi	a4,a4,1
    80003148:	fe1ff06f          	j	80003128 <_Z10buddy_initPvm+0x7c>
    for(size_t i = 0;i < numOfBlocks;i++)
    8000314c:	00000493          	li	s1,0
    80003150:	0324f663          	bgeu	s1,s2,8000317c <_Z10buddy_initPvm+0xd0>
        addBlocks((block*)buddy->startAddr + i, 0);
    80003154:	00006797          	auipc	a5,0x6
    80003158:	8d47b783          	ld	a5,-1836(a5) # 80008a28 <_ZL5buddy>
    8000315c:	0087b503          	ld	a0,8(a5)
    80003160:	00c49793          	slli	a5,s1,0xc
    80003164:	00000593          	li	a1,0
    80003168:	00f50533          	add	a0,a0,a5
    8000316c:	00000097          	auipc	ra,0x0
    80003170:	e14080e7          	jalr	-492(ra) # 80002f80 <_Z9addBlocksPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80003174:	00148493          	addi	s1,s1,1
    80003178:	fd9ff06f          	j	80003150 <_Z10buddy_initPvm+0xa4>
}
    8000317c:	00006517          	auipc	a0,0x6
    80003180:	8ac53503          	ld	a0,-1876(a0) # 80008a28 <_ZL5buddy>
    80003184:	02813083          	ld	ra,40(sp)
    80003188:	02013403          	ld	s0,32(sp)
    8000318c:	01813483          	ld	s1,24(sp)
    80003190:	01013903          	ld	s2,16(sp)
    80003194:	00813983          	ld	s3,8(sp)
    80003198:	03010113          	addi	sp,sp,48
    8000319c:	00008067          	ret

00000000800031a0 <_Z10buddy_freePvm>:
{
    800031a0:	fe010113          	addi	sp,sp,-32
    800031a4:	00113c23          	sd	ra,24(sp)
    800031a8:	00813823          	sd	s0,16(sp)
    800031ac:	00913423          	sd	s1,8(sp)
    800031b0:	01213023          	sd	s2,0(sp)
    800031b4:	02010413          	addi	s0,sp,32
    800031b8:	00050913          	mv	s2,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    800031bc:	00058513          	mv	a0,a1
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	b78080e7          	jalr	-1160(ra) # 80002d38 <_Z11getDeg2Ceilm>
    800031c8:	00050493          	mv	s1,a0
    addBlocks(addr, level); //adds free blocks
    800031cc:	00050593          	mv	a1,a0
    800031d0:	00090513          	mv	a0,s2
    800031d4:	00000097          	auipc	ra,0x0
    800031d8:	dac080e7          	jalr	-596(ra) # 80002f80 <_Z9addBlocksPvm>
    buddy->numOfFreeBlocks += (1 << level);
    800031dc:	00006797          	auipc	a5,0x6
    800031e0:	84c7b783          	ld	a5,-1972(a5) # 80008a28 <_ZL5buddy>
    800031e4:	00100513          	li	a0,1
    800031e8:	0095153b          	sllw	a0,a0,s1
    800031ec:	0107b483          	ld	s1,16(a5)
    800031f0:	00a484b3          	add	s1,s1,a0
    800031f4:	0097b823          	sd	s1,16(a5)
}
    800031f8:	01813083          	ld	ra,24(sp)
    800031fc:	01013403          	ld	s0,16(sp)
    80003200:	00813483          	ld	s1,8(sp)
    80003204:	00013903          	ld	s2,0(sp)
    80003208:	02010113          	addi	sp,sp,32
    8000320c:	00008067          	ret

0000000080003210 <_Z14printBuddyInfov>:

void printBuddyInfo()
{
    80003210:	fe010113          	addi	sp,sp,-32
    80003214:	00113c23          	sd	ra,24(sp)
    80003218:	00813823          	sd	s0,16(sp)
    8000321c:	00913423          	sd	s1,8(sp)
    80003220:	01213023          	sd	s2,0(sp)
    80003224:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    80003228:	00005517          	auipc	a0,0x5
    8000322c:	05050513          	addi	a0,a0,80 # 80008278 <CONSOLE_STATUS+0x268>
    80003230:	00000097          	auipc	ra,0x0
    80003234:	61c080e7          	jalr	1564(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    80003238:	00005497          	auipc	s1,0x5
    8000323c:	7f048493          	addi	s1,s1,2032 # 80008a28 <_ZL5buddy>
    80003240:	0004b783          	ld	a5,0(s1)
    80003244:	01000613          	li	a2,16
    80003248:	0087b583          	ld	a1,8(a5)
    8000324c:	00005517          	auipc	a0,0x5
    80003250:	06450513          	addi	a0,a0,100 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80003254:	00000097          	auipc	ra,0x0
    80003258:	6d0080e7          	jalr	1744(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    8000325c:	0004b783          	ld	a5,0(s1)
    80003260:	00a00613          	li	a2,10
    80003264:	0007b583          	ld	a1,0(a5)
    80003268:	00005517          	auipc	a0,0x5
    8000326c:	06050513          	addi	a0,a0,96 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80003270:	00000097          	auipc	ra,0x0
    80003274:	6b4080e7          	jalr	1716(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    80003278:	0004b783          	ld	a5,0(s1)
    8000327c:	00a00613          	li	a2,10
    80003280:	0107b583          	ld	a1,16(a5)
    80003284:	00005517          	auipc	a0,0x5
    80003288:	05c50513          	addi	a0,a0,92 # 800082e0 <CONSOLE_STATUS+0x2d0>
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	698080e7          	jalr	1688(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(int i = buddy->maxLevel;i>=0;i--)
    80003294:	0004b783          	ld	a5,0(s1)
    80003298:	0187a903          	lw	s2,24(a5)
    8000329c:	0080006f          	j	800032a4 <_Z14printBuddyInfov+0x94>
    800032a0:	fff9091b          	addiw	s2,s2,-1
    800032a4:	06094a63          	bltz	s2,80003318 <_Z14printBuddyInfov+0x108>
    {
        KConsole::trapPrintStringInt("Level ",i);
    800032a8:	00a00613          	li	a2,10
    800032ac:	00090593          	mv	a1,s2
    800032b0:	00005517          	auipc	a0,0x5
    800032b4:	05050513          	addi	a0,a0,80 # 80008300 <CONSOLE_STATUS+0x2f0>
    800032b8:	00000097          	auipc	ra,0x0
    800032bc:	66c080e7          	jalr	1644(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintString("Free blocks on this level\n");
    800032c0:	00005517          	auipc	a0,0x5
    800032c4:	04850513          	addi	a0,a0,72 # 80008308 <CONSOLE_STATUS+0x2f8>
    800032c8:	00000097          	auipc	ra,0x0
    800032cc:	584080e7          	jalr	1412(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    800032d0:	00290793          	addi	a5,s2,2
    800032d4:	00479713          	slli	a4,a5,0x4
    800032d8:	00005797          	auipc	a5,0x5
    800032dc:	7507b783          	ld	a5,1872(a5) # 80008a28 <_ZL5buddy>
    800032e0:	00e787b3          	add	a5,a5,a4
    800032e4:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    800032e8:	fa048ce3          	beqz	s1,800032a0 <_Z14printBuddyInfov+0x90>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    800032ec:	00000613          	li	a2,0
    800032f0:	01000593          	li	a1,16
    800032f4:	00048513          	mv	a0,s1
    800032f8:	00000097          	auipc	ra,0x0
    800032fc:	598080e7          	jalr	1432(ra) # 80003890 <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    80003300:	00005517          	auipc	a0,0x5
    80003304:	ea050513          	addi	a0,a0,-352 # 800081a0 <CONSOLE_STATUS+0x190>
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	544080e7          	jalr	1348(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    80003310:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    80003314:	fd5ff06f          	j	800032e8 <_Z14printBuddyInfov+0xd8>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    80003318:	00005517          	auipc	a0,0x5
    8000331c:	01050513          	addi	a0,a0,16 # 80008328 <CONSOLE_STATUS+0x318>
    80003320:	00000097          	auipc	ra,0x0
    80003324:	52c080e7          	jalr	1324(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
}
    80003328:	01813083          	ld	ra,24(sp)
    8000332c:	01013403          	ld	s0,16(sp)
    80003330:	00813483          	ld	s1,8(sp)
    80003334:	00013903          	ld	s2,0(sp)
    80003338:	02010113          	addi	sp,sp,32
    8000333c:	00008067          	ret

0000000080003340 <_Z8getBuddyv>:

void* getBuddy()
{
    80003340:	ff010113          	addi	sp,sp,-16
    80003344:	00813423          	sd	s0,8(sp)
    80003348:	01010413          	addi	s0,sp,16
    return (void*)buddy;
    8000334c:	00005517          	auipc	a0,0x5
    80003350:	6dc53503          	ld	a0,1756(a0) # 80008a28 <_ZL5buddy>
    80003354:	00813403          	ld	s0,8(sp)
    80003358:	01010113          	addi	sp,sp,16
    8000335c:	00008067          	ret

0000000080003360 <_ZN8KConsole10initializeEv>:
char* KConsole::outputBuffer = nullptr;
uint64 KConsole::pendingPutc = 0;
bool KConsole::finished = false;

void KConsole::initialize()
{
    80003360:	fe010113          	addi	sp,sp,-32
    80003364:	00113c23          	sd	ra,24(sp)
    80003368:	00813823          	sd	s0,16(sp)
    8000336c:	00913423          	sd	s1,8(sp)
    80003370:	01213023          	sd	s2,0(sp)
    80003374:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80003378:	01800513          	li	a0,24
    8000337c:	00002097          	auipc	ra,0x2
    80003380:	28c080e7          	jalr	652(ra) # 80005608 <_ZN10KSemaphorenwEm>
    80003384:	00050493          	mv	s1,a0
    80003388:	00050863          	beqz	a0,80003398 <_ZN8KConsole10initializeEv+0x38>
    8000338c:	00000593          	li	a1,0
    80003390:	00002097          	auipc	ra,0x2
    80003394:	014080e7          	jalr	20(ra) # 800053a4 <_ZN10KSemaphoreC1Ei>
    80003398:	00005797          	auipc	a5,0x5
    8000339c:	6897bc23          	sd	s1,1688(a5) # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    800033a0:	01800513          	li	a0,24
    800033a4:	00002097          	auipc	ra,0x2
    800033a8:	264080e7          	jalr	612(ra) # 80005608 <_ZN10KSemaphorenwEm>
    800033ac:	00050493          	mv	s1,a0
    800033b0:	00050863          	beqz	a0,800033c0 <_ZN8KConsole10initializeEv+0x60>
    800033b4:	00000593          	li	a1,0
    800033b8:	00002097          	auipc	ra,0x2
    800033bc:	fec080e7          	jalr	-20(ra) # 800053a4 <_ZN10KSemaphoreC1Ei>
    800033c0:	00005917          	auipc	s2,0x5
    800033c4:	67090913          	addi	s2,s2,1648 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    800033c8:	00993423          	sd	s1,8(s2)
    inputBuffer = (char*)kmalloc(bufferSize);
    800033cc:	00004537          	lui	a0,0x4
    800033d0:	fffff097          	auipc	ra,0xfffff
    800033d4:	e38080e7          	jalr	-456(ra) # 80002208 <_Z7kmallocm>
    800033d8:	00a93823          	sd	a0,16(s2)
    outputBuffer = (char*)kmalloc(bufferSize);
    800033dc:	00004537          	lui	a0,0x4
    800033e0:	fffff097          	auipc	ra,0xfffff
    800033e4:	e28080e7          	jalr	-472(ra) # 80002208 <_Z7kmallocm>
    800033e8:	00a93c23          	sd	a0,24(s2)
}
    800033ec:	01813083          	ld	ra,24(sp)
    800033f0:	01013403          	ld	s0,16(sp)
    800033f4:	00813483          	ld	s1,8(sp)
    800033f8:	00013903          	ld	s2,0(sp)
    800033fc:	02010113          	addi	sp,sp,32
    80003400:	00008067          	ret
    80003404:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80003408:	00048513          	mv	a0,s1
    8000340c:	00002097          	auipc	ra,0x2
    80003410:	2ac080e7          	jalr	684(ra) # 800056b8 <_ZN10KSemaphoredlEPv>
    80003414:	00090513          	mv	a0,s2
    80003418:	00006097          	auipc	ra,0x6
    8000341c:	7a0080e7          	jalr	1952(ra) # 80009bb8 <_Unwind_Resume>
    80003420:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80003424:	00048513          	mv	a0,s1
    80003428:	00002097          	auipc	ra,0x2
    8000342c:	290080e7          	jalr	656(ra) # 800056b8 <_ZN10KSemaphoredlEPv>
    80003430:	00090513          	mv	a0,s2
    80003434:	00006097          	auipc	ra,0x6
    80003438:	784080e7          	jalr	1924(ra) # 80009bb8 <_Unwind_Resume>

000000008000343c <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    8000343c:	00005697          	auipc	a3,0x5
    80003440:	5f468693          	addi	a3,a3,1524 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    80003444:	0206b603          	ld	a2,32(a3)
    80003448:	00160793          	addi	a5,a2,1
    8000344c:	00004737          	lui	a4,0x4
    80003450:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003454:	00e7f7b3          	and	a5,a5,a4
    80003458:	0286b703          	ld	a4,40(a3)
    8000345c:	04e78c63          	beq	a5,a4,800034b4 <_ZN8KConsole17putCharacterInputEc+0x78>
{
    80003460:	ff010113          	addi	sp,sp,-16
    80003464:	00113423          	sd	ra,8(sp)
    80003468:	00813023          	sd	s0,0(sp)
    8000346c:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80003470:	00068713          	mv	a4,a3
    80003474:	0106b783          	ld	a5,16(a3)
    80003478:	00c78633          	add	a2,a5,a2
    8000347c:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80003480:	0206b783          	ld	a5,32(a3)
    80003484:	00178793          	addi	a5,a5,1
    80003488:	000046b7          	lui	a3,0x4
    8000348c:	fff68693          	addi	a3,a3,-1 # 3fff <_entry-0x7fffc001>
    80003490:	00d7f7b3          	and	a5,a5,a3
    80003494:	02f73023          	sd	a5,32(a4)
    hasCharactersInput->signal();
    80003498:	00073503          	ld	a0,0(a4)
    8000349c:	00002097          	auipc	ra,0x2
    800034a0:	124080e7          	jalr	292(ra) # 800055c0 <_ZN10KSemaphore6signalEv>
}
    800034a4:	00813083          	ld	ra,8(sp)
    800034a8:	00013403          	ld	s0,0(sp)
    800034ac:	01010113          	addi	sp,sp,16
    800034b0:	00008067          	ret
    800034b4:	00008067          	ret

00000000800034b8 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    800034b8:	00005797          	auipc	a5,0x5
    800034bc:	4407b783          	ld	a5,1088(a5) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800034c0:	0007b783          	ld	a5,0(a5)
    800034c4:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    800034c8:	0017f793          	andi	a5,a5,1
    800034cc:	02078063          	beqz	a5,800034ec <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    800034d0:	00005797          	auipc	a5,0x5
    800034d4:	4607b783          	ld	a5,1120(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x48>
    800034d8:	0007b783          	ld	a5,0(a5)
    800034dc:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    800034e0:	00005797          	auipc	a5,0x5
    800034e4:	5807b783          	ld	a5,1408(a5) # 80008a60 <_ZN8KConsole11pendingGetcE>
    800034e8:	00079463          	bnez	a5,800034f0 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    800034ec:	00008067          	ret
{
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00113423          	sd	ra,8(sp)
    800034f8:	00813023          	sd	s0,0(sp)
    800034fc:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80003500:	fff78793          	addi	a5,a5,-1
    80003504:	00005717          	auipc	a4,0x5
    80003508:	54f73e23          	sd	a5,1372(a4) # 80008a60 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    8000350c:	00000097          	auipc	ra,0x0
    80003510:	f30080e7          	jalr	-208(ra) # 8000343c <_ZN8KConsole17putCharacterInputEc>
}
    80003514:	00813083          	ld	ra,8(sp)
    80003518:	00013403          	ld	s0,0(sp)
    8000351c:	01010113          	addi	sp,sp,16
    80003520:	00008067          	ret

0000000080003524 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80003524:	fe010113          	addi	sp,sp,-32
    80003528:	00113c23          	sd	ra,24(sp)
    8000352c:	00813823          	sd	s0,16(sp)
    80003530:	00913423          	sd	s1,8(sp)
    80003534:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80003538:	00005497          	auipc	s1,0x5
    8000353c:	4f848493          	addi	s1,s1,1272 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    80003540:	0004b503          	ld	a0,0(s1)
    80003544:	00002097          	auipc	ra,0x2
    80003548:	f04080e7          	jalr	-252(ra) # 80005448 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    8000354c:	0284b783          	ld	a5,40(s1)
    80003550:	0204b703          	ld	a4,32(s1)
    80003554:	02e78c63          	beq	a5,a4,8000358c <_ZN8KConsole17getCharacterInputEv+0x68>
        return -1;
    char c = inputBuffer[inputHead];
    80003558:	0104b703          	ld	a4,16(s1)
    8000355c:	00f70733          	add	a4,a4,a5
    80003560:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    80003564:	00178793          	addi	a5,a5,1
    80003568:	00004737          	lui	a4,0x4
    8000356c:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003570:	00e7f7b3          	and	a5,a5,a4
    80003574:	02f4b423          	sd	a5,40(s1)
    return c;
}
    80003578:	01813083          	ld	ra,24(sp)
    8000357c:	01013403          	ld	s0,16(sp)
    80003580:	00813483          	ld	s1,8(sp)
    80003584:	02010113          	addi	sp,sp,32
    80003588:	00008067          	ret
        return -1;
    8000358c:	0ff00513          	li	a0,255
    80003590:	fe9ff06f          	j	80003578 <_ZN8KConsole17getCharacterInputEv+0x54>

0000000080003594 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80003594:	00005697          	auipc	a3,0x5
    80003598:	49c68693          	addi	a3,a3,1180 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    8000359c:	0386b603          	ld	a2,56(a3)
    800035a0:	00160793          	addi	a5,a2,1
    800035a4:	00004737          	lui	a4,0x4
    800035a8:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800035ac:	00e7f7b3          	and	a5,a5,a4
    800035b0:	0406b703          	ld	a4,64(a3)
    800035b4:	06e78263          	beq	a5,a4,80003618 <_ZN8KConsole18putCharacterOutputEc+0x84>
{
    800035b8:	ff010113          	addi	sp,sp,-16
    800035bc:	00113423          	sd	ra,8(sp)
    800035c0:	00813023          	sd	s0,0(sp)
    800035c4:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    800035c8:	00068793          	mv	a5,a3
    800035cc:	0486b703          	ld	a4,72(a3)
    800035d0:	00170713          	addi	a4,a4,1
    800035d4:	04e6b423          	sd	a4,72(a3)
    outputBuffer[outputTail] = c;
    800035d8:	0186b703          	ld	a4,24(a3)
    800035dc:	00c70633          	add	a2,a4,a2
    800035e0:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    800035e4:	0386b703          	ld	a4,56(a3)
    800035e8:	00170713          	addi	a4,a4,1
    800035ec:	000046b7          	lui	a3,0x4
    800035f0:	fff68693          	addi	a3,a3,-1 # 3fff <_entry-0x7fffc001>
    800035f4:	00d77733          	and	a4,a4,a3
    800035f8:	02e7bc23          	sd	a4,56(a5)
    hasCharactersOutput->signal();
    800035fc:	0087b503          	ld	a0,8(a5)
    80003600:	00002097          	auipc	ra,0x2
    80003604:	fc0080e7          	jalr	-64(ra) # 800055c0 <_ZN10KSemaphore6signalEv>
}
    80003608:	00813083          	ld	ra,8(sp)
    8000360c:	00013403          	ld	s0,0(sp)
    80003610:	01010113          	addi	sp,sp,16
    80003614:	00008067          	ret
    80003618:	00008067          	ret

000000008000361c <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    8000361c:	fe010113          	addi	sp,sp,-32
    80003620:	00113c23          	sd	ra,24(sp)
    80003624:	00813823          	sd	s0,16(sp)
    80003628:	00913423          	sd	s1,8(sp)
    8000362c:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003630:	00005497          	auipc	s1,0x5
    80003634:	40048493          	addi	s1,s1,1024 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    80003638:	0084b503          	ld	a0,8(s1)
    8000363c:	00002097          	auipc	ra,0x2
    80003640:	e0c080e7          	jalr	-500(ra) # 80005448 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003644:	0404b783          	ld	a5,64(s1)
    80003648:	0384b703          	ld	a4,56(s1)
    8000364c:	02e78c63          	beq	a5,a4,80003684 <_ZN8KConsole18getCharacterOutputEv+0x68>
        return -1;
    char c = outputBuffer[outputHead];
    80003650:	0184b703          	ld	a4,24(s1)
    80003654:	00f70733          	add	a4,a4,a5
    80003658:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    8000365c:	00178793          	addi	a5,a5,1
    80003660:	00004737          	lui	a4,0x4
    80003664:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003668:	00e7f7b3          	and	a5,a5,a4
    8000366c:	04f4b023          	sd	a5,64(s1)
    return c;
}
    80003670:	01813083          	ld	ra,24(sp)
    80003674:	01013403          	ld	s0,16(sp)
    80003678:	00813483          	ld	s1,8(sp)
    8000367c:	02010113          	addi	sp,sp,32
    80003680:	00008067          	ret
        return -1;
    80003684:	0ff00513          	li	a0,255
    80003688:	fe9ff06f          	j	80003670 <_ZN8KConsole18getCharacterOutputEv+0x54>

000000008000368c <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    8000368c:	ff010113          	addi	sp,sp,-16
    80003690:	00113423          	sd	ra,8(sp)
    80003694:	00813023          	sd	s0,0(sp)
    80003698:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    8000369c:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800036a0:	0ff57513          	andi	a0,a0,255
    800036a4:	00000097          	auipc	ra,0x0
    800036a8:	ef0080e7          	jalr	-272(ra) # 80003594 <_ZN8KConsole18putCharacterOutputEc>
}
    800036ac:	00813083          	ld	ra,8(sp)
    800036b0:	00013403          	ld	s0,0(sp)
    800036b4:	01010113          	addi	sp,sp,16
    800036b8:	00008067          	ret

00000000800036bc <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800036bc:	fe010113          	addi	sp,sp,-32
    800036c0:	00113c23          	sd	ra,24(sp)
    800036c4:	00813823          	sd	s0,16(sp)
    800036c8:	00913423          	sd	s1,8(sp)
    800036cc:	02010413          	addi	s0,sp,32
    pendingGetc++;
    800036d0:	00005717          	auipc	a4,0x5
    800036d4:	36070713          	addi	a4,a4,864 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    800036d8:	03073783          	ld	a5,48(a4)
    800036dc:	00178793          	addi	a5,a5,1
    800036e0:	02f73823          	sd	a5,48(a4)
    char ch;
    ch = getCharacterInput();
    800036e4:	00000097          	auipc	ra,0x0
    800036e8:	e40080e7          	jalr	-448(ra) # 80003524 <_ZN8KConsole17getCharacterInputEv>
    800036ec:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    800036f0:	01b00793          	li	a5,27
    800036f4:	02f51663          	bne	a0,a5,80003720 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    800036f8:	00d00793          	li	a5,13
    800036fc:	02f48863          	beq	s1,a5,8000372c <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003700:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003704:	00001097          	auipc	ra,0x1
    80003708:	e5c080e7          	jalr	-420(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000370c:	01813083          	ld	ra,24(sp)
    80003710:	01013403          	ld	s0,16(sp)
    80003714:	00813483          	ld	s1,8(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00008067          	ret
        putCharacterOutput(ch);
    80003720:	00000097          	auipc	ra,0x0
    80003724:	e74080e7          	jalr	-396(ra) # 80003594 <_ZN8KConsole18putCharacterOutputEc>
    80003728:	fd1ff06f          	j	800036f8 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    8000372c:	00d00513          	li	a0,13
    80003730:	00000097          	auipc	ra,0x0
    80003734:	e64080e7          	jalr	-412(ra) # 80003594 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003738:	00a00513          	li	a0,10
    8000373c:	00000097          	auipc	ra,0x0
    80003740:	e58080e7          	jalr	-424(ra) # 80003594 <_ZN8KConsole18putCharacterOutputEc>
    80003744:	fbdff06f          	j	80003700 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080003748 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003748:	ff010113          	addi	sp,sp,-16
    8000374c:	00813423          	sd	s0,8(sp)
    80003750:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003754:	00005517          	auipc	a0,0x5
    80003758:	32453503          	ld	a0,804(a0) # 80008a78 <_ZN8KConsole11pendingPutcE>
    8000375c:	00153513          	seqz	a0,a0
    80003760:	00813403          	ld	s0,8(sp)
    80003764:	01010113          	addi	sp,sp,16
    80003768:	00008067          	ret

000000008000376c <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    8000376c:	fe010113          	addi	sp,sp,-32
    80003770:	00113c23          	sd	ra,24(sp)
    80003774:	00813823          	sd	s0,16(sp)
    80003778:	02010413          	addi	s0,sp,32
    8000377c:	0180006f          	j	80003794 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit_kernel();
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	b00080e7          	jalr	-1280(ra) # 80001280 <_Z18thread_exit_kernelv>
    80003788:	0340006f          	j	800037bc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch_kernel();
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	aac080e7          	jalr	-1364(ra) # 80001238 <_Z22thread_dispatch_kernelv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80003794:	00005797          	auipc	a5,0x5
    80003798:	1dc7b783          	ld	a5,476(a5) # 80008970 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000379c:	0007c783          	lbu	a5,0(a5)
    800037a0:	00078e63          	beqz	a5,800037bc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800037a4:	00000097          	auipc	ra,0x0
    800037a8:	fa4080e7          	jalr	-92(ra) # 80003748 <_ZN8KConsole17outputBufferEmptyEv>
    800037ac:	00050863          	beqz	a0,800037bc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800037b0:	00005797          	auipc	a5,0x5
    800037b4:	2b07b783          	ld	a5,688(a5) # 80008a60 <_ZN8KConsole11pendingGetcE>
    800037b8:	fc0784e3          	beqz	a5,80003780 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    800037bc:	00005797          	auipc	a5,0x5
    800037c0:	13c7b783          	ld	a5,316(a5) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800037c4:	0007b783          	ld	a5,0(a5)
    800037c8:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    800037cc:	0207f793          	andi	a5,a5,32
    800037d0:	fa078ee3          	beqz	a5,8000378c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    800037d4:	00005797          	auipc	a5,0x5
    800037d8:	2a47b783          	ld	a5,676(a5) # 80008a78 <_ZN8KConsole11pendingPutcE>
    800037dc:	fa0788e3          	beqz	a5,8000378c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	a78080e7          	jalr	-1416(ra) # 80001258 <_Z20sysCallGetCharOutputv>
    800037e8:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    800037ec:	00005717          	auipc	a4,0x5
    800037f0:	24470713          	addi	a4,a4,580 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    800037f4:	04873783          	ld	a5,72(a4)
    800037f8:	fff78793          	addi	a5,a5,-1
    800037fc:	04f73423          	sd	a5,72(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003800:	00005797          	auipc	a5,0x5
    80003804:	0f07b783          	ld	a5,240(a5) # 800088f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003808:	0007b783          	ld	a5,0(a5)
    8000380c:	fef44703          	lbu	a4,-17(s0)
    80003810:	00e78023          	sb	a4,0(a5)
    80003814:	f81ff06f          	j	80003794 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080003818 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003818:	ff010113          	addi	sp,sp,-16
    8000381c:	00113423          	sd	ra,8(sp)
    80003820:	00813023          	sd	s0,0(sp)
    80003824:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003828:	00000097          	auipc	ra,0x0
    8000382c:	df4080e7          	jalr	-524(ra) # 8000361c <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003830:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003834:	00001097          	auipc	ra,0x1
    80003838:	d2c080e7          	jalr	-724(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000383c:	00813083          	ld	ra,8(sp)
    80003840:	00013403          	ld	s0,0(sp)
    80003844:	01010113          	addi	sp,sp,16
    80003848:	00008067          	ret

000000008000384c <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    8000384c:	fe010113          	addi	sp,sp,-32
    80003850:	00113c23          	sd	ra,24(sp)
    80003854:	00813823          	sd	s0,16(sp)
    80003858:	00913423          	sd	s1,8(sp)
    8000385c:	02010413          	addi	s0,sp,32
    80003860:	00050493          	mv	s1,a0
    while (*string != '\0')
    80003864:	0004c503          	lbu	a0,0(s1)
    80003868:	00050a63          	beqz	a0,8000387c <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    8000386c:	00000097          	auipc	ra,0x0
    80003870:	d28080e7          	jalr	-728(ra) # 80003594 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80003874:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003878:	fedff06f          	j	80003864 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    8000387c:	01813083          	ld	ra,24(sp)
    80003880:	01013403          	ld	s0,16(sp)
    80003884:	00813483          	ld	s1,8(sp)
    80003888:	02010113          	addi	sp,sp,32
    8000388c:	00008067          	ret

0000000080003890 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    80003890:	fb010113          	addi	sp,sp,-80
    80003894:	04113423          	sd	ra,72(sp)
    80003898:	04813023          	sd	s0,64(sp)
    8000389c:	02913c23          	sd	s1,56(sp)
    800038a0:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800038a4:	00005797          	auipc	a5,0x5
    800038a8:	ac478793          	addi	a5,a5,-1340 # 80008368 <CONSOLE_STATUS+0x358>
    800038ac:	0007b703          	ld	a4,0(a5)
    800038b0:	fce43423          	sd	a4,-56(s0)
    800038b4:	0087b703          	ld	a4,8(a5)
    800038b8:	fce43823          	sd	a4,-48(s0)
    800038bc:	0107c783          	lbu	a5,16(a5)
    800038c0:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    800038c4:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800038c8:	02b57733          	remu	a4,a0,a1
    800038cc:	fe040693          	addi	a3,s0,-32
    800038d0:	00e68733          	add	a4,a3,a4
    800038d4:	fe874703          	lbu	a4,-24(a4)
    800038d8:	009687b3          	add	a5,a3,s1
    800038dc:	0014849b          	addiw	s1,s1,1
    800038e0:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    800038e4:	00050793          	mv	a5,a0
    800038e8:	02b55533          	divu	a0,a0,a1
    800038ec:	fcb7fee3          	bgeu	a5,a1,800038c8 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    800038f0:	fff4849b          	addiw	s1,s1,-1
    800038f4:	0004ce63          	bltz	s1,80003910 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    800038f8:	fe040793          	addi	a5,s0,-32
    800038fc:	009787b3          	add	a5,a5,s1
    80003900:	fd87c503          	lbu	a0,-40(a5)
    80003904:	00000097          	auipc	ra,0x0
    80003908:	c90080e7          	jalr	-880(ra) # 80003594 <_ZN8KConsole18putCharacterOutputEc>
    8000390c:	fe5ff06f          	j	800038f0 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    80003910:	04813083          	ld	ra,72(sp)
    80003914:	04013403          	ld	s0,64(sp)
    80003918:	03813483          	ld	s1,56(sp)
    8000391c:	05010113          	addi	sp,sp,80
    80003920:	00008067          	ret

0000000080003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    80003924:	fe010113          	addi	sp,sp,-32
    80003928:	00113c23          	sd	ra,24(sp)
    8000392c:	00813823          	sd	s0,16(sp)
    80003930:	00913423          	sd	s1,8(sp)
    80003934:	01213023          	sd	s2,0(sp)
    80003938:	02010413          	addi	s0,sp,32
    8000393c:	00058493          	mv	s1,a1
    80003940:	00060913          	mv	s2,a2
    trapPrintString(string);
    80003944:	00000097          	auipc	ra,0x0
    80003948:	f08080e7          	jalr	-248(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    8000394c:	00000613          	li	a2,0
    80003950:	00090593          	mv	a1,s2
    80003954:	00048513          	mv	a0,s1
    80003958:	00000097          	auipc	ra,0x0
    8000395c:	f38080e7          	jalr	-200(ra) # 80003890 <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    80003960:	00005517          	auipc	a0,0x5
    80003964:	84050513          	addi	a0,a0,-1984 # 800081a0 <CONSOLE_STATUS+0x190>
    80003968:	00000097          	auipc	ra,0x0
    8000396c:	ee4080e7          	jalr	-284(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
}
    80003970:	01813083          	ld	ra,24(sp)
    80003974:	01013403          	ld	s0,16(sp)
    80003978:	00813483          	ld	s1,8(sp)
    8000397c:	00013903          	ld	s2,0(sp)
    80003980:	02010113          	addi	sp,sp,32
    80003984:	00008067          	ret

0000000080003988 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003988:	ff010113          	addi	sp,sp,-16
    8000398c:	00813423          	sd	s0,8(sp)
    80003990:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003994:	00005797          	auipc	a5,0x5
    80003998:	fec7b783          	ld	a5,-20(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    8000399c:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800039a0:	00500793          	li	a5,5
    800039a4:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800039a8:	00005797          	auipc	a5,0x5
    800039ac:	0e07b783          	ld	a5,224(a5) # 80008a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800039b0:	00000593          	li	a1,0
    while(curr != 0)
    800039b4:	02078063          	beqz	a5,800039d4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800039b8:	02063683          	ld	a3,32(a2)
    800039bc:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800039c0:	00e6e863          	bltu	a3,a4,800039d0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800039c4:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800039c8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800039cc:	fe9ff06f          	j	800039b4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800039d0:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800039d4:	00058a63          	beqz	a1,800039e8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800039d8:	00c5b423          	sd	a2,8(a1)
}
    800039dc:	00813403          	ld	s0,8(sp)
    800039e0:	01010113          	addi	sp,sp,16
    800039e4:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800039e8:	00005797          	auipc	a5,0x5
    800039ec:	0ac7b023          	sd	a2,160(a5) # 80008a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800039f0:	fedff06f          	j	800039dc <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800039f4 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    800039f4:	00005517          	auipc	a0,0x5
    800039f8:	09453503          	ld	a0,148(a0) # 80008a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800039fc:	06050e63          	beqz	a0,80003a78 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003a00:	06050c63          	beqz	a0,80003a78 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003a04:	02053783          	ld	a5,32(a0)
    80003a08:	00005717          	auipc	a4,0x5
    80003a0c:	f4073703          	ld	a4,-192(a4) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003a10:	00073703          	ld	a4,0(a4)
    80003a14:	06f76263          	bltu	a4,a5,80003a78 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003a18:	fe010113          	addi	sp,sp,-32
    80003a1c:	00113c23          	sd	ra,24(sp)
    80003a20:	00813823          	sd	s0,16(sp)
    80003a24:	00913423          	sd	s1,8(sp)
    80003a28:	02010413          	addi	s0,sp,32
    80003a2c:	0180006f          	j	80003a44 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003a30:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003a34:	00005717          	auipc	a4,0x5
    80003a38:	f1473703          	ld	a4,-236(a4) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003a3c:	00073703          	ld	a4,0(a4)
    80003a40:	02f76263          	bltu	a4,a5,80003a64 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003a44:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003a48:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003a4c:	00000097          	auipc	ra,0x0
    80003a50:	0b8080e7          	jalr	184(ra) # 80003b04 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003a54:	00005797          	auipc	a5,0x5
    80003a58:	0297ba23          	sd	s1,52(a5) # 80008a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003a5c:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003a60:	fc0498e3          	bnez	s1,80003a30 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003a64:	01813083          	ld	ra,24(sp)
    80003a68:	01013403          	ld	s0,16(sp)
    80003a6c:	00813483          	ld	s1,8(sp)
    80003a70:	02010113          	addi	sp,sp,32
    80003a74:	00008067          	ret
    80003a78:	00008067          	ret

0000000080003a7c <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003a7c:	ff010113          	addi	sp,sp,-16
    80003a80:	00113423          	sd	ra,8(sp)
    80003a84:	00813023          	sd	s0,0(sp)
    80003a88:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003a8c:	00001097          	auipc	ra,0x1
    80003a90:	208080e7          	jalr	520(ra) # 80004c94 <_ZN15MemoryAllocator7kmallocEm>
}
    80003a94:	00813083          	ld	ra,8(sp)
    80003a98:	00013403          	ld	s0,0(sp)
    80003a9c:	01010113          	addi	sp,sp,16
    80003aa0:	00008067          	ret

0000000080003aa4 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003aa4:	ff010113          	addi	sp,sp,-16
    80003aa8:	00113423          	sd	ra,8(sp)
    80003aac:	00813023          	sd	s0,0(sp)
    80003ab0:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003ab4:	00001097          	auipc	ra,0x1
    80003ab8:	250080e7          	jalr	592(ra) # 80004d04 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003abc:	00813083          	ld	ra,8(sp)
    80003ac0:	00013403          	ld	s0,0(sp)
    80003ac4:	01010113          	addi	sp,sp,16
    80003ac8:	00008067          	ret

0000000080003acc <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003acc:	ff010113          	addi	sp,sp,-16
    80003ad0:	00813423          	sd	s0,8(sp)
    80003ad4:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003ad8:	00005797          	auipc	a5,0x5
    80003adc:	fb87b783          	ld	a5,-72(a5) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003ae0:	00000513          	li	a0,0
    while(curr != 0)
    80003ae4:	00078863          	beqz	a5,80003af4 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003ae8:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003aec:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003af0:	ff5ff06f          	j	80003ae4 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003af4:	0005051b          	sext.w	a0,a0
    80003af8:	00813403          	ld	s0,8(sp)
    80003afc:	01010113          	addi	sp,sp,16
    80003b00:	00008067          	ret

0000000080003b04 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003b04:	ff010113          	addi	sp,sp,-16
    80003b08:	00813423          	sd	s0,8(sp)
    80003b0c:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003b10:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003b14:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003b18:	00005797          	auipc	a5,0x5
    80003b1c:	f787b783          	ld	a5,-136(a5) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003b20:	02078263          	beqz	a5,80003b44 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003b24:	00005797          	auipc	a5,0x5
    80003b28:	f6c78793          	addi	a5,a5,-148 # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003b2c:	0087b703          	ld	a4,8(a5)
    80003b30:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003b34:	00a7b423          	sd	a0,8(a5)
    }
}
    80003b38:	00813403          	ld	s0,8(sp)
    80003b3c:	01010113          	addi	sp,sp,16
    80003b40:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003b44:	00005797          	auipc	a5,0x5
    80003b48:	f4c78793          	addi	a5,a5,-180 # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003b4c:	00a7b423          	sd	a0,8(a5)
    80003b50:	00a7b023          	sd	a0,0(a5)
    80003b54:	fe5ff06f          	j	80003b38 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003b58 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003b58:	ff010113          	addi	sp,sp,-16
    80003b5c:	00813423          	sd	s0,8(sp)
    80003b60:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003b64:	00005517          	auipc	a0,0x5
    80003b68:	f2c53503          	ld	a0,-212(a0) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003b6c:	00050c63          	beqz	a0,80003b84 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003b70:	00853783          	ld	a5,8(a0)
    80003b74:	00078e63          	beqz	a5,80003b90 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003b78:	00005717          	auipc	a4,0x5
    80003b7c:	f0f73c23          	sd	a5,-232(a4) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003b80:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003b84:	00813403          	ld	s0,8(sp)
    80003b88:	01010113          	addi	sp,sp,16
    80003b8c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003b90:	00005797          	auipc	a5,0x5
    80003b94:	f0078793          	addi	a5,a5,-256 # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003b98:	0007b423          	sd	zero,8(a5)
    80003b9c:	0007b023          	sd	zero,0(a5)
    80003ba0:	fe1ff06f          	j	80003b80 <_ZN9Scheduler3getEv+0x28>

0000000080003ba4 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003ba4:	fe010113          	addi	sp,sp,-32
    80003ba8:	00113c23          	sd	ra,24(sp)
    80003bac:	00813823          	sd	s0,16(sp)
    80003bb0:	00913423          	sd	s1,8(sp)
    80003bb4:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003bb8:	00005497          	auipc	s1,0x5
    80003bbc:	ed84b483          	ld	s1,-296(s1) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003bc0:	02048863          	beqz	s1,80003bf0 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003bc4:	00000613          	li	a2,0
    80003bc8:	01000593          	li	a1,16
    80003bcc:	00048513          	mv	a0,s1
    80003bd0:	00000097          	auipc	ra,0x0
    80003bd4:	cc0080e7          	jalr	-832(ra) # 80003890 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003bd8:	00004517          	auipc	a0,0x4
    80003bdc:	5c850513          	addi	a0,a0,1480 # 800081a0 <CONSOLE_STATUS+0x190>
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	c6c080e7          	jalr	-916(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003be8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003bec:	fd5ff06f          	j	80003bc0 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003bf0:	01813083          	ld	ra,24(sp)
    80003bf4:	01013403          	ld	s0,16(sp)
    80003bf8:	00813483          	ld	s1,8(sp)
    80003bfc:	02010113          	addi	sp,sp,32
    80003c00:	00008067          	ret

0000000080003c04 <main>:
#include "../../h/Riscv.hpp"

void main()
{
    80003c04:	ff010113          	addi	sp,sp,-16
    80003c08:	00113423          	sd	ra,8(sp)
    80003c0c:	00813023          	sd	s0,0(sp)
    80003c10:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003c14:	00001097          	auipc	ra,0x1
    80003c18:	854080e7          	jalr	-1964(ra) # 80004468 <_ZN5Riscv10kernelMainEv>
    80003c1c:	00813083          	ld	ra,8(sp)
    80003c20:	00013403          	ld	s0,0(sp)
    80003c24:	01010113          	addi	sp,sp,16
    80003c28:	00008067          	ret

0000000080003c2c <_Z14buddyInitTest1v>:
#include "../../h/buddyTests.hpp"
#include "../../h/KConsole.hpp"
#include "../../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    80003c2c:	ff010113          	addi	sp,sp,-16
    80003c30:	00113423          	sd	ra,8(sp)
    80003c34:	00813023          	sd	s0,0(sp)
    80003c38:	01010413          	addi	s0,sp,16
    printBuddyInfo();
    80003c3c:	fffff097          	auipc	ra,0xfffff
    80003c40:	5d4080e7          	jalr	1492(ra) # 80003210 <_Z14printBuddyInfov>
}
    80003c44:	00813083          	ld	ra,8(sp)
    80003c48:	00013403          	ld	s0,0(sp)
    80003c4c:	01010113          	addi	sp,sp,16
    80003c50:	00008067          	ret

0000000080003c54 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003c54:	ff010113          	addi	sp,sp,-16
    80003c58:	00113423          	sd	ra,8(sp)
    80003c5c:	00813023          	sd	s0,0(sp)
    80003c60:	01010413          	addi	s0,sp,16
    printBuddyInfo();
    80003c64:	fffff097          	auipc	ra,0xfffff
    80003c68:	5ac080e7          	jalr	1452(ra) # 80003210 <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003c6c:	00100513          	li	a0,1
    80003c70:	fffff097          	auipc	ra,0xfffff
    80003c74:	23c080e7          	jalr	572(ra) # 80002eac <_Z11buddy_allocm>
    printBuddyInfo();
    80003c78:	fffff097          	auipc	ra,0xfffff
    80003c7c:	598080e7          	jalr	1432(ra) # 80003210 <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003c80:	00100513          	li	a0,1
    80003c84:	fffff097          	auipc	ra,0xfffff
    80003c88:	228080e7          	jalr	552(ra) # 80002eac <_Z11buddy_allocm>
    printBuddyInfo();
    80003c8c:	fffff097          	auipc	ra,0xfffff
    80003c90:	584080e7          	jalr	1412(ra) # 80003210 <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003c94:	00100513          	li	a0,1
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	214080e7          	jalr	532(ra) # 80002eac <_Z11buddy_allocm>
    printBuddyInfo();
    80003ca0:	fffff097          	auipc	ra,0xfffff
    80003ca4:	570080e7          	jalr	1392(ra) # 80003210 <_Z14printBuddyInfov>
    buddy_alloc(3);
    80003ca8:	00300513          	li	a0,3
    80003cac:	fffff097          	auipc	ra,0xfffff
    80003cb0:	200080e7          	jalr	512(ra) # 80002eac <_Z11buddy_allocm>
    printBuddyInfo();
    80003cb4:	fffff097          	auipc	ra,0xfffff
    80003cb8:	55c080e7          	jalr	1372(ra) # 80003210 <_Z14printBuddyInfov>
}
    80003cbc:	00813083          	ld	ra,8(sp)
    80003cc0:	00013403          	ld	s0,0(sp)
    80003cc4:	01010113          	addi	sp,sp,16
    80003cc8:	00008067          	ret

0000000080003ccc <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003ccc:	ff010113          	addi	sp,sp,-16
    80003cd0:	00113423          	sd	ra,8(sp)
    80003cd4:	00813023          	sd	s0,0(sp)
    80003cd8:	01010413          	addi	s0,sp,16
    void* adr = buddy_alloc(100);
    80003cdc:	06400513          	li	a0,100
    80003ce0:	fffff097          	auipc	ra,0xfffff
    80003ce4:	1cc080e7          	jalr	460(ra) # 80002eac <_Z11buddy_allocm>
    if(adr == nullptr)
    80003ce8:	00050a63          	beqz	a0,80003cfc <_Z20buddyOnlyAllocsTest2v+0x30>
    {
        printBuddyInfo();
    }
}
    80003cec:	00813083          	ld	ra,8(sp)
    80003cf0:	00013403          	ld	s0,0(sp)
    80003cf4:	01010113          	addi	sp,sp,16
    80003cf8:	00008067          	ret
        printBuddyInfo();
    80003cfc:	fffff097          	auipc	ra,0xfffff
    80003d00:	514080e7          	jalr	1300(ra) # 80003210 <_Z14printBuddyInfov>
}
    80003d04:	fe9ff06f          	j	80003cec <_Z20buddyOnlyAllocsTest2v+0x20>

0000000080003d08 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003d08:	fe010113          	addi	sp,sp,-32
    80003d0c:	00113c23          	sd	ra,24(sp)
    80003d10:	00813823          	sd	s0,16(sp)
    80003d14:	00913423          	sd	s1,8(sp)
    80003d18:	01213023          	sd	s2,0(sp)
    80003d1c:	02010413          	addi	s0,sp,32
    printBuddyInfo();
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	4f0080e7          	jalr	1264(ra) # 80003210 <_Z14printBuddyInfov>
    void* adr = buddy_alloc(1);
    80003d28:	00100513          	li	a0,1
    80003d2c:	fffff097          	auipc	ra,0xfffff
    80003d30:	180080e7          	jalr	384(ra) # 80002eac <_Z11buddy_allocm>
    80003d34:	00050493          	mv	s1,a0
    printBuddyInfo();
    80003d38:	fffff097          	auipc	ra,0xfffff
    80003d3c:	4d8080e7          	jalr	1240(ra) # 80003210 <_Z14printBuddyInfov>
    buddy_free(adr, 1);
    80003d40:	00100593          	li	a1,1
    80003d44:	00048513          	mv	a0,s1
    80003d48:	fffff097          	auipc	ra,0xfffff
    80003d4c:	458080e7          	jalr	1112(ra) # 800031a0 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	4c0080e7          	jalr	1216(ra) # 80003210 <_Z14printBuddyInfov>

    adr = buddy_alloc(2);
    80003d58:	00200513          	li	a0,2
    80003d5c:	fffff097          	auipc	ra,0xfffff
    80003d60:	150080e7          	jalr	336(ra) # 80002eac <_Z11buddy_allocm>
    80003d64:	00050493          	mv	s1,a0
    void* adr2 = buddy_alloc(3);
    80003d68:	00300513          	li	a0,3
    80003d6c:	fffff097          	auipc	ra,0xfffff
    80003d70:	140080e7          	jalr	320(ra) # 80002eac <_Z11buddy_allocm>
    80003d74:	00050913          	mv	s2,a0
    printBuddyInfo();
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	498080e7          	jalr	1176(ra) # 80003210 <_Z14printBuddyInfov>

    buddy_free(adr, 2);
    80003d80:	00200593          	li	a1,2
    80003d84:	00048513          	mv	a0,s1
    80003d88:	fffff097          	auipc	ra,0xfffff
    80003d8c:	418080e7          	jalr	1048(ra) # 800031a0 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	480080e7          	jalr	1152(ra) # 80003210 <_Z14printBuddyInfov>
    adr = buddy_alloc(1);
    80003d98:	00100513          	li	a0,1
    80003d9c:	fffff097          	auipc	ra,0xfffff
    80003da0:	110080e7          	jalr	272(ra) # 80002eac <_Z11buddy_allocm>
    80003da4:	00050493          	mv	s1,a0
    printBuddyInfo();
    80003da8:	fffff097          	auipc	ra,0xfffff
    80003dac:	468080e7          	jalr	1128(ra) # 80003210 <_Z14printBuddyInfov>

    buddy_free(adr2, 3);
    80003db0:	00300593          	li	a1,3
    80003db4:	00090513          	mv	a0,s2
    80003db8:	fffff097          	auipc	ra,0xfffff
    80003dbc:	3e8080e7          	jalr	1000(ra) # 800031a0 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	450080e7          	jalr	1104(ra) # 80003210 <_Z14printBuddyInfov>
    buddy_free(adr, 1);
    80003dc8:	00100593          	li	a1,1
    80003dcc:	00048513          	mv	a0,s1
    80003dd0:	fffff097          	auipc	ra,0xfffff
    80003dd4:	3d0080e7          	jalr	976(ra) # 800031a0 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	438080e7          	jalr	1080(ra) # 80003210 <_Z14printBuddyInfov>
}
    80003de0:	01813083          	ld	ra,24(sp)
    80003de4:	01013403          	ld	s0,16(sp)
    80003de8:	00813483          	ld	s1,8(sp)
    80003dec:	00013903          	ld	s2,0(sp)
    80003df0:	02010113          	addi	sp,sp,32
    80003df4:	00008067          	ret

0000000080003df8 <_Z13buddyTestMixav>:

void buddyTestMixa()
{
    80003df8:	fd010113          	addi	sp,sp,-48
    80003dfc:	02113423          	sd	ra,40(sp)
    80003e00:	02813023          	sd	s0,32(sp)
    80003e04:	00913c23          	sd	s1,24(sp)
    80003e08:	01213823          	sd	s2,16(sp)
    80003e0c:	01313423          	sd	s3,8(sp)
    80003e10:	01413023          	sd	s4,0(sp)
    80003e14:	03010413          	addi	s0,sp,48
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    80003e18:	0000a537          	lui	a0,0xa
    80003e1c:	c4050513          	addi	a0,a0,-960 # 9c40 <_entry-0x7fff63c0>
    80003e20:	00001097          	auipc	ra,0x1
    80003e24:	e74080e7          	jalr	-396(ra) # 80004c94 <_ZN15MemoryAllocator7kmallocEm>
    80003e28:	00050993          	mv	s3,a0
    printBuddyInfo();
    80003e2c:	fffff097          	auipc	ra,0xfffff
    80003e30:	3e4080e7          	jalr	996(ra) # 80003210 <_Z14printBuddyInfov>
    for(int i = 0; i < 5000;i++)
    80003e34:	00000493          	li	s1,0
    80003e38:	0080006f          	j	80003e40 <_Z13buddyTestMixav+0x48>
    80003e3c:	0014849b          	addiw	s1,s1,1
    80003e40:	000017b7          	lui	a5,0x1
    80003e44:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80003e48:	0697c063          	blt	a5,s1,80003ea8 <_Z13buddyTestMixav+0xb0>
    {
        x[i] = buddy_alloc(2);
    80003e4c:	00349913          	slli	s2,s1,0x3
    80003e50:	01298933          	add	s2,s3,s2
    80003e54:	00200513          	li	a0,2
    80003e58:	fffff097          	auipc	ra,0xfffff
    80003e5c:	054080e7          	jalr	84(ra) # 80002eac <_Z11buddy_allocm>
    80003e60:	00a93023          	sd	a0,0(s2)
        if(x[i] == nullptr)
    80003e64:	fc051ce3          	bnez	a0,80003e3c <_Z13buddyTestMixav+0x44>
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
    80003e68:	00a00613          	li	a2,10
    80003e6c:	00048593          	mv	a1,s1
    80003e70:	00004517          	auipc	a0,0x4
    80003e74:	51050513          	addi	a0,a0,1296 # 80008380 <CONSOLE_STATUS+0x370>
    80003e78:	00000097          	auipc	ra,0x0
    80003e7c:	aac080e7          	jalr	-1364(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
            for(int j = 0;j < i;j++)
    80003e80:	00000913          	li	s2,0
    80003e84:	02995263          	bge	s2,s1,80003ea8 <_Z13buddyTestMixav+0xb0>
            {
                buddy_free(x[j], 2);
    80003e88:	00391793          	slli	a5,s2,0x3
    80003e8c:	00f987b3          	add	a5,s3,a5
    80003e90:	00200593          	li	a1,2
    80003e94:	0007b503          	ld	a0,0(a5)
    80003e98:	fffff097          	auipc	ra,0xfffff
    80003e9c:	308080e7          	jalr	776(ra) # 800031a0 <_Z10buddy_freePvm>
            for(int j = 0;j < i;j++)
    80003ea0:	0019091b          	addiw	s2,s2,1
    80003ea4:	fe1ff06f          	j	80003e84 <_Z13buddyTestMixav+0x8c>
            }
            break;
        }
    }
    printBuddyInfo();
    80003ea8:	fffff097          	auipc	ra,0xfffff
    80003eac:	368080e7          	jalr	872(ra) # 80003210 <_Z14printBuddyInfov>
}
    80003eb0:	02813083          	ld	ra,40(sp)
    80003eb4:	02013403          	ld	s0,32(sp)
    80003eb8:	01813483          	ld	s1,24(sp)
    80003ebc:	01013903          	ld	s2,16(sp)
    80003ec0:	00813983          	ld	s3,8(sp)
    80003ec4:	00013a03          	ld	s4,0(sp)
    80003ec8:	03010113          	addi	sp,sp,48
    80003ecc:	00008067          	ret

0000000080003ed0 <_ZN5Riscv17initVirtualMemoryEv>:
extern char *userDataStart;
extern char *kernelTextStart;
extern char *kernelDataStart;

void Riscv::initVirtualMemory()
{
    80003ed0:	ff010113          	addi	sp,sp,-16
    80003ed4:	00813423          	sd	s0,8(sp)
    80003ed8:	01010413          	addi	s0,sp,16
    //size_t addr = (size_t)getNextBlockAddr((size_t)HEAP_START_ADDR);

    //size_t pmtSize = (1 << 9);
    //size_t descSize = 64;
    //size_t
}
    80003edc:	00813403          	ld	s0,8(sp)
    80003ee0:	01010113          	addi	sp,sp,16
    80003ee4:	00008067          	ret

0000000080003ee8 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch_kernel();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80003ee8:	ff010113          	addi	sp,sp,-16
    80003eec:	00813423          	sd	s0,8(sp)
    80003ef0:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003ef4:	00200793          	li	a5,2
    80003ef8:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003efc:	00813403          	ld	s0,8(sp)
    80003f00:	01010113          	addi	sp,sp,16
    80003f04:	00008067          	ret

0000000080003f08 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003f08:	ff010113          	addi	sp,sp,-16
    80003f0c:	00813423          	sd	s0,8(sp)
    80003f10:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003f14:	00200793          	li	a5,2
    80003f18:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003f1c:	00813403          	ld	s0,8(sp)
    80003f20:	01010113          	addi	sp,sp,16
    80003f24:	00008067          	ret

0000000080003f28 <_ZN5Riscv9endSystemEv>:
{
    80003f28:	ff010113          	addi	sp,sp,-16
    80003f2c:	00113423          	sd	ra,8(sp)
    80003f30:	00813023          	sd	s0,0(sp)
    80003f34:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80003f38:	00000097          	auipc	ra,0x0
    80003f3c:	fd0080e7          	jalr	-48(ra) # 80003f08 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80003f40:	00100793          	li	a5,1
    80003f44:	00005717          	auipc	a4,0x5
    80003f48:	b4f70e23          	sb	a5,-1188(a4) # 80008aa0 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80003f4c:	00000097          	auipc	ra,0x0
    80003f50:	c0c080e7          	jalr	-1012(ra) # 80003b58 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80003f54:	fe051ce3          	bnez	a0,80003f4c <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80003f58:	00005797          	auipc	a5,0x5
    80003f5c:	a087b783          	ld	a5,-1528(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003f60:	0007b503          	ld	a0,0(a5)
    80003f64:	00000097          	auipc	ra,0x0
    80003f68:	ba0080e7          	jalr	-1120(ra) # 80003b04 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80003f6c:	00005797          	auipc	a5,0x5
    80003f70:	9bc7b783          	ld	a5,-1604(a5) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003f74:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80003f78:	00000097          	auipc	ra,0x0
    80003f7c:	f70080e7          	jalr	-144(ra) # 80003ee8 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80003f80:	00005797          	auipc	a5,0x5
    80003f84:	9e07b783          	ld	a5,-1568(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003f88:	0007b503          	ld	a0,0(a5)
    80003f8c:	fffff097          	auipc	ra,0xfffff
    80003f90:	a48080e7          	jalr	-1464(ra) # 800029d4 <_ZN3PCB10isFinishedEv>
    80003f94:	00051863          	bnez	a0,80003fa4 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch_kernel();
    80003f98:	ffffd097          	auipc	ra,0xffffd
    80003f9c:	2a0080e7          	jalr	672(ra) # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::consolePCB->isFinished())
    80003fa0:	fe1ff06f          	j	80003f80 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80003fa4:	00000097          	auipc	ra,0x0
    80003fa8:	f64080e7          	jalr	-156(ra) # 80003f08 <_ZN5Riscv17disableInterruptsEv>
}
    80003fac:	00813083          	ld	ra,8(sp)
    80003fb0:	00013403          	ld	s0,0(sp)
    80003fb4:	01010113          	addi	sp,sp,16
    80003fb8:	00008067          	ret

0000000080003fbc <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003fbc:	ff010113          	addi	sp,sp,-16
    80003fc0:	00813423          	sd	s0,8(sp)
    80003fc4:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread) {
    80003fc8:	00005797          	auipc	a5,0x5
    80003fcc:	9b87b783          	ld	a5,-1608(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    80003fd0:	0007b783          	ld	a5,0(a5)
    80003fd4:	0007c703          	lbu	a4,0(a5)
    80003fd8:	00070c63          	beqz	a4,80003ff0 <_ZN5Riscv10popSppSpieEv+0x34>
        __asm__ volatile ("csrw sepc, ra");
    80003fdc:	14109073          	csrw	sepc,ra
        __asm__ volatile ("sret");
    80003fe0:	10200073          	sret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
        __asm__ volatile ("sret");
    }
}
    80003fe4:	00813403          	ld	s0,8(sp)
    80003fe8:	01010113          	addi	sp,sp,16
    80003fec:	00008067          	ret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
    80003ff0:	0287b703          	ld	a4,40(a5)
    80003ff4:	00070513          	mv	a0,a4
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
    80003ff8:	0307b783          	ld	a5,48(a5)
    80003ffc:	00078593          	mv	a1,a5
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
    80004000:	00005797          	auipc	a5,0x5
    80004004:	9987b783          	ld	a5,-1640(a5) # 80008998 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80004008:	14179073          	csrw	sepc,a5
        __asm__ volatile ("sret");
    8000400c:	10200073          	sret
}
    80004010:	fd5ff06f          	j	80003fe4 <_ZN5Riscv10popSppSpieEv+0x28>

0000000080004014 <_ZN5Riscv14setVirtualAddrEmmm>:

void Riscv::setVirtualAddr(size_t addr, size_t mask, size_t maskLeaf)
{
    80004014:	fb010113          	addi	sp,sp,-80
    80004018:	04113423          	sd	ra,72(sp)
    8000401c:	04813023          	sd	s0,64(sp)
    80004020:	02913c23          	sd	s1,56(sp)
    80004024:	03213823          	sd	s2,48(sp)
    80004028:	03313423          	sd	s3,40(sp)
    8000402c:	03413023          	sd	s4,32(sp)
    80004030:	01513c23          	sd	s5,24(sp)
    80004034:	01613823          	sd	s6,16(sp)
    80004038:	01713423          	sd	s7,8(sp)
    8000403c:	05010413          	addi	s0,sp,80
    80004040:	00058993          	mv	s3,a1
    80004044:	00060a13          	mv	s4,a2
    size_t l2 = addr >> 30;
    80004048:	01e55b93          	srli	s7,a0,0x1e
    size_t l1 = (addr >> 21) & (0x1ff);
    8000404c:	01555b13          	srli	s6,a0,0x15
    80004050:	1ffb7b13          	andi	s6,s6,511
    size_t l0 = (addr >> 12) & (0x1ff);
    80004054:	00c55493          	srli	s1,a0,0xc
    80004058:	1ff4f913          	andi	s2,s1,511
    size_t pmt2Desc = ((size_t*)mainPMT)[l2];
    8000405c:	003b9b93          	slli	s7,s7,0x3
    80004060:	00005797          	auipc	a5,0x5
    80004064:	a487b783          	ld	a5,-1464(a5) # 80008aa8 <_ZN5Riscv7mainPMTE>
    80004068:	017787b3          	add	a5,a5,s7
    8000406c:	0007b503          	ld	a0,0(a5)
    void* pmt1 = nullptr;
    if(pmt2Desc == 0)
    80004070:	06050663          	beqz	a0,800040dc <_ZN5Riscv14setVirtualAddrEmmm+0xc8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
        ((size_t*)mainPMT)[l2] = newDesc;
    }
    else
    {
        pmt1 = (void*)((pmt2Desc >> 10) << 12);
    80004074:	00a55513          	srli	a0,a0,0xa
    80004078:	00c51513          	slli	a0,a0,0xc
    }
    size_t pmt1Desc = ((size_t*)pmt1)[l1];
    8000407c:	003b1a93          	slli	s5,s6,0x3
    80004080:	01550ab3          	add	s5,a0,s5
    80004084:	000ab503          	ld	a0,0(s5)
    void* pmt0 = nullptr;
    if(pmt1Desc == 0)
    80004088:	0a050063          	beqz	a0,80004128 <_ZN5Riscv14setVirtualAddrEmmm+0x114>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
        ((size_t*)pmt1)[l1] = newDesc;
    }
    else
    {
        pmt0 = (void*)((pmt1Desc >> 10) << 12);
    8000408c:	00a55513          	srli	a0,a0,0xa
    80004090:	00c51513          	slli	a0,a0,0xc
    }

    size_t pmt0Desc = ((size_t*)pmt0)[l0];
    80004094:	00391913          	slli	s2,s2,0x3
    80004098:	01250533          	add	a0,a0,s2
    8000409c:	00053783          	ld	a5,0(a0)
    if(pmt0Desc == 0)
    800040a0:	00079863          	bnez	a5,800040b0 <_ZN5Riscv14setVirtualAddrEmmm+0x9c>
    {
        ((size_t*)pmt0)[l0] = ((addr >> 12) << 10) | maskLeaf;
    800040a4:	00a49493          	slli	s1,s1,0xa
    800040a8:	0144ea33          	or	s4,s1,s4
    800040ac:	01453023          	sd	s4,0(a0)
    }
}
    800040b0:	04813083          	ld	ra,72(sp)
    800040b4:	04013403          	ld	s0,64(sp)
    800040b8:	03813483          	ld	s1,56(sp)
    800040bc:	03013903          	ld	s2,48(sp)
    800040c0:	02813983          	ld	s3,40(sp)
    800040c4:	02013a03          	ld	s4,32(sp)
    800040c8:	01813a83          	ld	s5,24(sp)
    800040cc:	01013b03          	ld	s6,16(sp)
    800040d0:	00813b83          	ld	s7,8(sp)
    800040d4:	05010113          	addi	sp,sp,80
    800040d8:	00008067          	ret
        pmt1 = buddy_alloc(1);
    800040dc:	00100513          	li	a0,1
    800040e0:	fffff097          	auipc	ra,0xfffff
    800040e4:	dcc080e7          	jalr	-564(ra) # 80002eac <_Z11buddy_allocm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    800040e8:	00000793          	li	a5,0
    800040ec:	1ff00713          	li	a4,511
    800040f0:	00f74c63          	blt	a4,a5,80004108 <_ZN5Riscv14setVirtualAddrEmmm+0xf4>
            ((size_t*)pmt1)[i] = 0;
    800040f4:	00379713          	slli	a4,a5,0x3
    800040f8:	00e50733          	add	a4,a0,a4
    800040fc:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80004100:	0017879b          	addiw	a5,a5,1
    80004104:	fe9ff06f          	j	800040ec <_ZN5Riscv14setVirtualAddrEmmm+0xd8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
    80004108:	00c55793          	srli	a5,a0,0xc
    8000410c:	00a79793          	slli	a5,a5,0xa
    80004110:	0137e7b3          	or	a5,a5,s3
        ((size_t*)mainPMT)[l2] = newDesc;
    80004114:	00005717          	auipc	a4,0x5
    80004118:	99473703          	ld	a4,-1644(a4) # 80008aa8 <_ZN5Riscv7mainPMTE>
    8000411c:	01770bb3          	add	s7,a4,s7
    80004120:	00fbb023          	sd	a5,0(s7)
    80004124:	f59ff06f          	j	8000407c <_ZN5Riscv14setVirtualAddrEmmm+0x68>
        pmt0 = buddy_alloc(1);
    80004128:	00100513          	li	a0,1
    8000412c:	fffff097          	auipc	ra,0xfffff
    80004130:	d80080e7          	jalr	-640(ra) # 80002eac <_Z11buddy_allocm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80004134:	00000793          	li	a5,0
    80004138:	1ff00713          	li	a4,511
    8000413c:	00f74c63          	blt	a4,a5,80004154 <_ZN5Riscv14setVirtualAddrEmmm+0x140>
            ((size_t*)pmt0)[i] = 0;
    80004140:	00379713          	slli	a4,a5,0x3
    80004144:	00e50733          	add	a4,a0,a4
    80004148:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    8000414c:	0017879b          	addiw	a5,a5,1
    80004150:	fe9ff06f          	j	80004138 <_ZN5Riscv14setVirtualAddrEmmm+0x124>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
    80004154:	00c55793          	srli	a5,a0,0xc
    80004158:	00a79793          	slli	a5,a5,0xa
    8000415c:	0137e9b3          	or	s3,a5,s3
        ((size_t*)pmt1)[l1] = newDesc;
    80004160:	013ab023          	sd	s3,0(s5)
    80004164:	f31ff06f          	j	80004094 <_ZN5Riscv14setVirtualAddrEmmm+0x80>

0000000080004168 <_ZN5Riscv19setVirtualAddrRangeEmmi>:
{
    80004168:	fd010113          	addi	sp,sp,-48
    8000416c:	02113423          	sd	ra,40(sp)
    80004170:	02813023          	sd	s0,32(sp)
    80004174:	00913c23          	sd	s1,24(sp)
    80004178:	01213823          	sd	s2,16(sp)
    8000417c:	01313423          	sd	s3,8(sp)
    80004180:	03010413          	addi	s0,sp,48
    80004184:	00050493          	mv	s1,a0
    80004188:	00058913          	mv	s2,a1
    8000418c:	00060993          	mv	s3,a2
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    80004190:	0324f263          	bgeu	s1,s2,800041b4 <_ZN5Riscv19setVirtualAddrRangeEmmi+0x4c>
        setVirtualAddr(i, VMEM_V_BIT, permission);
    80004194:	00098613          	mv	a2,s3
    80004198:	00100593          	li	a1,1
    8000419c:	00048513          	mv	a0,s1
    800041a0:	00000097          	auipc	ra,0x0
    800041a4:	e74080e7          	jalr	-396(ra) # 80004014 <_ZN5Riscv14setVirtualAddrEmmm>
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    800041a8:	000017b7          	lui	a5,0x1
    800041ac:	00f484b3          	add	s1,s1,a5
    800041b0:	fe1ff06f          	j	80004190 <_ZN5Riscv19setVirtualAddrRangeEmmi+0x28>
}
    800041b4:	02813083          	ld	ra,40(sp)
    800041b8:	02013403          	ld	s0,32(sp)
    800041bc:	01813483          	ld	s1,24(sp)
    800041c0:	01013903          	ld	s2,16(sp)
    800041c4:	00813983          	ld	s3,8(sp)
    800041c8:	03010113          	addi	sp,sp,48
    800041cc:	00008067          	ret

00000000800041d0 <_ZN5Riscv10initSystemEv>:
{
    800041d0:	fc010113          	addi	sp,sp,-64
    800041d4:	02113c23          	sd	ra,56(sp)
    800041d8:	02813823          	sd	s0,48(sp)
    800041dc:	02913423          	sd	s1,40(sp)
    800041e0:	03213023          	sd	s2,32(sp)
    800041e4:	01313c23          	sd	s3,24(sp)
    800041e8:	01413823          	sd	s4,16(sp)
    800041ec:	01513423          	sd	s5,8(sp)
    800041f0:	01613023          	sd	s6,0(sp)
    800041f4:	04010413          	addi	s0,sp,64
    w_stvec((uint64)&Riscv::supervisorTrap);
    800041f8:	00004797          	auipc	a5,0x4
    800041fc:	7187b783          	ld	a5,1816(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80004200:	10579073          	csrw	stvec,a5
    size_t heapStartBlock = getBlockAddr((size_t)HEAP_START_ADDR);
    80004204:	00004917          	auipc	s2,0x4
    80004208:	6fc93903          	ld	s2,1788(s2) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000420c:	00093503          	ld	a0,0(s2)
    80004210:	fffff097          	auipc	ra,0xfffff
    80004214:	aa4080e7          	jalr	-1372(ra) # 80002cb4 <_Z12getBlockAddrm>
    void* newStartAddr = (void*)(heapStartBlock + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80004218:	010017b7          	lui	a5,0x1001
    8000421c:	00f504b3          	add	s1,a0,a5
    MemoryAllocator::initMemory(newStartAddr);
    80004220:	00048513          	mv	a0,s1
    80004224:	00000097          	auipc	ra,0x0
    80004228:	680080e7          	jalr	1664(ra) # 800048a4 <_ZN15MemoryAllocator10initMemoryEPv>
    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    8000422c:	000015b7          	lui	a1,0x1
    80004230:	00158593          	addi	a1,a1,1 # 1001 <_entry-0x7fffefff>
    80004234:	00093503          	ld	a0,0(s2)
    80004238:	ffffe097          	auipc	ra,0xffffe
    8000423c:	b88080e7          	jalr	-1144(ra) # 80001dc0 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    80004240:	00000693          	li	a3,0
    80004244:	00000613          	li	a2,0
    80004248:	06000593          	li	a1,96
    8000424c:	00004517          	auipc	a0,0x4
    80004250:	14450513          	addi	a0,a0,324 # 80008390 <CONSOLE_STATUS+0x380>
    80004254:	ffffe097          	auipc	ra,0xffffe
    80004258:	ac8080e7          	jalr	-1336(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    8000425c:	00005917          	auipc	s2,0x5
    80004260:	84490913          	addi	s2,s2,-1980 # 80008aa0 <_ZN5Riscv12finishSystemE>
    80004264:	00a93823          	sd	a0,16(s2)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80004268:	00000693          	li	a3,0
    8000426c:	00000613          	li	a2,0
    80004270:	01800593          	li	a1,24
    80004274:	00004517          	auipc	a0,0x4
    80004278:	12c50513          	addi	a0,a0,300 # 800083a0 <CONSOLE_STATUS+0x390>
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	aa0080e7          	jalr	-1376(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004284:	00a93c23          	sd	a0,24(s2)
    PCB::initialize();
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	624080e7          	jalr	1572(ra) # 800028ac <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80004290:	fffff097          	auipc	ra,0xfffff
    80004294:	0d0080e7          	jalr	208(ra) # 80003360 <_ZN8KConsole10initializeEv>
    mainPMT = buddy_alloc(1);
    80004298:	00100513          	li	a0,1
    8000429c:	fffff097          	auipc	ra,0xfffff
    800042a0:	c10080e7          	jalr	-1008(ra) # 80002eac <_Z11buddy_allocm>
    800042a4:	00a93423          	sd	a0,8(s2)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    800042a8:	00000793          	li	a5,0
    800042ac:	1ff00713          	li	a4,511
    800042b0:	02f76063          	bltu	a4,a5,800042d0 <_ZN5Riscv10initSystemEv+0x100>
        ((size_t*)mainPMT)[i] = 0;
    800042b4:	00379693          	slli	a3,a5,0x3
    800042b8:	00004717          	auipc	a4,0x4
    800042bc:	7f073703          	ld	a4,2032(a4) # 80008aa8 <_ZN5Riscv7mainPMTE>
    800042c0:	00d70733          	add	a4,a4,a3
    800042c4:	00073023          	sd	zero,0(a4)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    800042c8:	00178793          	addi	a5,a5,1 # 1001001 <_entry-0x7effefff>
    800042cc:	fe1ff06f          	j	800042ac <_ZN5Riscv10initSystemEv+0xdc>
    KConsole::trapPrintStringInt("main PMT ", (size_t)mainPMT,16);
    800042d0:	00004917          	auipc	s2,0x4
    800042d4:	7d090913          	addi	s2,s2,2000 # 80008aa0 <_ZN5Riscv12finishSystemE>
    800042d8:	01000613          	li	a2,16
    800042dc:	00893583          	ld	a1,8(s2)
    800042e0:	00004517          	auipc	a0,0x4
    800042e4:	0d850513          	addi	a0,a0,216 # 800083b8 <CONSOLE_STATUS+0x3a8>
    800042e8:	fffff097          	auipc	ra,0xfffff
    800042ec:	63c080e7          	jalr	1596(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    uint64 kTextStart = (uint64)(&kernelTextStart);
    800042f0:	00004b17          	auipc	s6,0x4
    800042f4:	628b3b03          	ld	s6,1576(s6) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x30>
    uint64 kDataStart = (uint64)(&kernelDataStart);
    800042f8:	00004a97          	auipc	s5,0x4
    800042fc:	628aba83          	ld	s5,1576(s5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x38>
    uint64 uTextStart = (uint64)(&userTextStart);
    80004300:	00004997          	auipc	s3,0x4
    80004304:	6789b983          	ld	s3,1656(s3) # 80008978 <_GLOBAL_OFFSET_TABLE_+0x90>
    uint64 uDataStart = (uint64)(&userDataStart);
    80004308:	00004a17          	auipc	s4,0x4
    8000430c:	698a3a03          	ld	s4,1688(s4) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0xb8>
    setVirtualAddrRange(programStartAddr, kTextStart, KERNEL_RX); // before kernel instructions
    80004310:	00b00613          	li	a2,11
    80004314:	000b0593          	mv	a1,s6
    80004318:	00004517          	auipc	a0,0x4
    8000431c:	5a053503          	ld	a0,1440(a0) # 800088b8 <_ZN5Riscv16programStartAddrE>
    80004320:	00000097          	auipc	ra,0x0
    80004324:	e48080e7          	jalr	-440(ra) # 80004168 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange(kTextStart, kDataStart,KERNEL_RX); // kernel instructions
    80004328:	00b00613          	li	a2,11
    8000432c:	000a8593          	mv	a1,s5
    80004330:	000b0513          	mv	a0,s6
    80004334:	00000097          	auipc	ra,0x0
    80004338:	e34080e7          	jalr	-460(ra) # 80004168 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&kernelDataStart), uTextStart, KERNEL_RW); // kernel data
    8000433c:	00700613          	li	a2,7
    80004340:	00098593          	mv	a1,s3
    80004344:	000a8513          	mv	a0,s5
    80004348:	00000097          	auipc	ra,0x0
    8000434c:	e20080e7          	jalr	-480(ra) # 80004168 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userTextStart), uDataStart, USER_RX); //user instructions
    80004350:	01b00613          	li	a2,27
    80004354:	000a0593          	mv	a1,s4
    80004358:	00098513          	mv	a0,s3
    8000435c:	00000097          	auipc	ra,0x0
    80004360:	e0c080e7          	jalr	-500(ra) # 80004168 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userDataStart), (size_t)HEAP_START_ADDR, USER_RW); // user data
    80004364:	00004997          	auipc	s3,0x4
    80004368:	59c9b983          	ld	s3,1436(s3) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000436c:	01700613          	li	a2,23
    80004370:	0009b583          	ld	a1,0(s3)
    80004374:	000a0513          	mv	a0,s4
    80004378:	00000097          	auipc	ra,0x0
    8000437c:	df0080e7          	jalr	-528(ra) # 80004168 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)HEAP_START_ADDR, (size_t)newStartAddr, KERNEL_RW); // kernel heap data
    80004380:	00700613          	li	a2,7
    80004384:	00048593          	mv	a1,s1
    80004388:	0009b503          	ld	a0,0(s3)
    8000438c:	00000097          	auipc	ra,0x0
    80004390:	ddc080e7          	jalr	-548(ra) # 80004168 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)newStartAddr, (size_t)HEAP_END_ADDR + 1,USER_RW); // user heap data
    80004394:	00004797          	auipc	a5,0x4
    80004398:	5f47b783          	ld	a5,1524(a5) # 80008988 <_GLOBAL_OFFSET_TABLE_+0xa0>
    8000439c:	0007b583          	ld	a1,0(a5)
    800043a0:	01700613          	li	a2,23
    800043a4:	00158593          	addi	a1,a1,1
    800043a8:	00048513          	mv	a0,s1
    800043ac:	00000097          	auipc	ra,0x0
    800043b0:	dbc080e7          	jalr	-580(ra) # 80004168 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddr((size_t)CONSOLE_RX_DATA,0x1,0xf);
    800043b4:	00f00613          	li	a2,15
    800043b8:	00100593          	li	a1,1
    800043bc:	00004797          	auipc	a5,0x4
    800043c0:	5347b783          	ld	a5,1332(a5) # 800088f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800043c4:	0007b503          	ld	a0,0(a5)
    800043c8:	00000097          	auipc	ra,0x0
    800043cc:	c4c080e7          	jalr	-948(ra) # 80004014 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_TX_DATA,0x1,0xf);
    800043d0:	00f00613          	li	a2,15
    800043d4:	00100593          	li	a1,1
    800043d8:	00004797          	auipc	a5,0x4
    800043dc:	5587b783          	ld	a5,1368(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x48>
    800043e0:	0007b503          	ld	a0,0(a5)
    800043e4:	00000097          	auipc	ra,0x0
    800043e8:	c30080e7          	jalr	-976(ra) # 80004014 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_STATUS,0x1,0xf);
    800043ec:	00f00613          	li	a2,15
    800043f0:	00100593          	li	a1,1
    800043f4:	00004797          	auipc	a5,0x4
    800043f8:	5047b783          	ld	a5,1284(a5) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800043fc:	0007b503          	ld	a0,0(a5)
    80004400:	00000097          	auipc	ra,0x0
    80004404:	c14080e7          	jalr	-1004(ra) # 80004014 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr(0xc201004,0x1,0xf);
    80004408:	00f00613          	li	a2,15
    8000440c:	00100593          	li	a1,1
    80004410:	0c201537          	lui	a0,0xc201
    80004414:	00450513          	addi	a0,a0,4 # c201004 <_entry-0x73dfeffc>
    80004418:	00000097          	auipc	ra,0x0
    8000441c:	bfc080e7          	jalr	-1028(ra) # 80004014 <_ZN5Riscv14setVirtualAddrEmmm>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80004420:	000407b7          	lui	a5,0x40
    80004424:	1007a073          	csrs	sstatus,a5
    size_t satp = ((size_t)1 << 63) | ((size_t)mainPMT >> 12);
    80004428:	00893783          	ld	a5,8(s2)
    8000442c:	00c7d793          	srli	a5,a5,0xc
    80004430:	fff00713          	li	a4,-1
    80004434:	03f71713          	slli	a4,a4,0x3f
    80004438:	00e7e7b3          	or	a5,a5,a4
    __asm__ volatile("csrw satp, %0" : :"r"(satp));
    8000443c:	18079073          	csrw	satp,a5
}
    80004440:	03813083          	ld	ra,56(sp)
    80004444:	03013403          	ld	s0,48(sp)
    80004448:	02813483          	ld	s1,40(sp)
    8000444c:	02013903          	ld	s2,32(sp)
    80004450:	01813983          	ld	s3,24(sp)
    80004454:	01013a03          	ld	s4,16(sp)
    80004458:	00813a83          	ld	s5,8(sp)
    8000445c:	00013b03          	ld	s6,0(sp)
    80004460:	04010113          	addi	sp,sp,64
    80004464:	00008067          	ret

0000000080004468 <_ZN5Riscv10kernelMainEv>:
    if(kernelMainCalled) return;
    80004468:	00004797          	auipc	a5,0x4
    8000446c:	6587c783          	lbu	a5,1624(a5) # 80008ac0 <_ZN5Riscv16kernelMainCalledE>
    80004470:	00078463          	beqz	a5,80004478 <_ZN5Riscv10kernelMainEv+0x10>
    80004474:	00008067          	ret
{
    80004478:	ff010113          	addi	sp,sp,-16
    8000447c:	00113423          	sd	ra,8(sp)
    80004480:	00813023          	sd	s0,0(sp)
    80004484:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80004488:	00100793          	li	a5,1
    8000448c:	00004717          	auipc	a4,0x4
    80004490:	62f70a23          	sb	a5,1588(a4) # 80008ac0 <_ZN5Riscv16kernelMainCalledE>
    initSystem();
    80004494:	00000097          	auipc	ra,0x0
    80004498:	d3c080e7          	jalr	-708(ra) # 800041d0 <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    8000449c:	00000097          	auipc	ra,0x0
    800044a0:	a4c080e7          	jalr	-1460(ra) # 80003ee8 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::userPCB->isFinished())
    800044a4:	00004797          	auipc	a5,0x4
    800044a8:	4c47b783          	ld	a5,1220(a5) # 80008968 <_GLOBAL_OFFSET_TABLE_+0x80>
    800044ac:	0007b503          	ld	a0,0(a5)
    800044b0:	ffffe097          	auipc	ra,0xffffe
    800044b4:	524080e7          	jalr	1316(ra) # 800029d4 <_ZN3PCB10isFinishedEv>
    800044b8:	00051863          	bnez	a0,800044c8 <_ZN5Riscv10kernelMainEv+0x60>
        thread_dispatch_kernel();
    800044bc:	ffffd097          	auipc	ra,0xffffd
    800044c0:	d7c080e7          	jalr	-644(ra) # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::userPCB->isFinished())
    800044c4:	fe1ff06f          	j	800044a4 <_ZN5Riscv10kernelMainEv+0x3c>
    endSystem();
    800044c8:	00000097          	auipc	ra,0x0
    800044cc:	a60080e7          	jalr	-1440(ra) # 80003f28 <_ZN5Riscv9endSystemEv>
}
    800044d0:	00813083          	ld	ra,8(sp)
    800044d4:	00013403          	ld	s0,0(sp)
    800044d8:	01010113          	addi	sp,sp,16
    800044dc:	00008067          	ret

00000000800044e0 <_ZN5Riscv14addVirtualAddrEm>:

void Riscv::addVirtualAddr(size_t addr)
{
    800044e0:	ff010113          	addi	sp,sp,-16
    800044e4:	00113423          	sd	ra,8(sp)
    800044e8:	00813023          	sd	s0,0(sp)
    800044ec:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    800044f0:	00f00613          	li	a2,15
    800044f4:	00100593          	li	a1,1
    800044f8:	00000097          	auipc	ra,0x0
    800044fc:	b1c080e7          	jalr	-1252(ra) # 80004014 <_ZN5Riscv14setVirtualAddrEmmm>
}
    80004500:	00813083          	ld	ra,8(sp)
    80004504:	00013403          	ld	s0,0(sp)
    80004508:	01010113          	addi	sp,sp,16
    8000450c:	00008067          	ret

0000000080004510 <_ZN5Riscv19addVirtualAddrInstrEm>:

void Riscv::addVirtualAddrInstr(size_t addr)
{
    80004510:	ff010113          	addi	sp,sp,-16
    80004514:	00113423          	sd	ra,8(sp)
    80004518:	00813023          	sd	s0,0(sp)
    8000451c:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    80004520:	00f00613          	li	a2,15
    80004524:	00100593          	li	a1,1
    80004528:	00000097          	auipc	ra,0x0
    8000452c:	aec080e7          	jalr	-1300(ra) # 80004014 <_ZN5Riscv14setVirtualAddrEmmm>
}
    80004530:	00813083          	ld	ra,8(sp)
    80004534:	00013403          	ld	s0,0(sp)
    80004538:	01010113          	addi	sp,sp,16
    8000453c:	00008067          	ret

0000000080004540 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80004540:	ff010113          	addi	sp,sp,-16
    80004544:	00813423          	sd	s0,8(sp)
    80004548:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    8000454c:	00200793          	li	a5,2
    80004550:	1047b073          	csrc	sie,a5
}
    80004554:	00813403          	ld	s0,8(sp)
    80004558:	01010113          	addi	sp,sp,16
    8000455c:	00008067          	ret

0000000080004560 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80004560:	ff010113          	addi	sp,sp,-16
    80004564:	00813423          	sd	s0,8(sp)
    80004568:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    8000456c:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80004570:	00004717          	auipc	a4,0x4
    80004574:	41073703          	ld	a4,1040(a4) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004578:	00073703          	ld	a4,0(a4)
    8000457c:	01073703          	ld	a4,16(a4)
    80004580:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80004584:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004588:	00078593          	mv	a1,a5
}
    8000458c:	00813403          	ld	s0,8(sp)
    80004590:	01010113          	addi	sp,sp,16
    80004594:	00008067          	ret

0000000080004598 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004598:	ff010113          	addi	sp,sp,-16
    8000459c:	00813423          	sd	s0,8(sp)
    800045a0:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    800045a4:	00004797          	auipc	a5,0x4
    800045a8:	3dc7b783          	ld	a5,988(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    800045ac:	0007b783          	ld	a5,0(a5)
    800045b0:	0007c783          	lbu	a5,0(a5)
    800045b4:	00078c63          	beqz	a5,800045cc <_ZN5Riscv14changePrivModeEv+0x34>
    800045b8:	10000793          	li	a5,256
    800045bc:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    800045c0:	00813403          	ld	s0,8(sp)
    800045c4:	01010113          	addi	sp,sp,16
    800045c8:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800045cc:	10000793          	li	a5,256
    800045d0:	1007b073          	csrc	sstatus,a5
    800045d4:	fedff06f          	j	800045c0 <_ZN5Riscv14changePrivModeEv+0x28>

00000000800045d8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800045d8:	f9010113          	addi	sp,sp,-112
    800045dc:	06113423          	sd	ra,104(sp)
    800045e0:	06813023          	sd	s0,96(sp)
    800045e4:	04913c23          	sd	s1,88(sp)
    800045e8:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800045ec:	00070713          	mv	a4,a4
    800045f0:	00004797          	auipc	a5,0x4
    800045f4:	3b87b783          	ld	a5,952(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0xc0>
    800045f8:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800045fc:	00004797          	auipc	a5,0x4
    80004600:	3847b783          	ld	a5,900(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004604:	0007b783          	ld	a5,0(a5)
    80004608:	14002773          	csrr	a4,sscratch
    8000460c:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80004610:	142027f3          	csrr	a5,scause
    80004614:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80004618:	fb843783          	ld	a5,-72(s0)

    static const size_t storePF = 15;
    static const size_t loadPF = 13;
    static const size_t instrPF = 12;

    switch(scause)
    8000461c:	00f00713          	li	a4,15
    80004620:	02f76863          	bltu	a4,a5,80004650 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    80004624:	00200713          	li	a4,2
    80004628:	10e7e863          	bltu	a5,a4,80004738 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    8000462c:	00f00713          	li	a4,15
    80004630:	10f76463          	bltu	a4,a5,80004738 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    80004634:	00279793          	slli	a5,a5,0x2
    80004638:	00004717          	auipc	a4,0x4
    8000463c:	d8c70713          	addi	a4,a4,-628 # 800083c4 <CONSOLE_STATUS+0x3b4>
    80004640:	00e787b3          	add	a5,a5,a4
    80004644:	0007a783          	lw	a5,0(a5)
    80004648:	00e787b3          	add	a5,a5,a4
    8000464c:	00078067          	jr	a5
    80004650:	fff00713          	li	a4,-1
    80004654:	03f71713          	slli	a4,a4,0x3f
    80004658:	00170713          	addi	a4,a4,1
    8000465c:	04e78a63          	beq	a5,a4,800046b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    80004660:	fff00713          	li	a4,-1
    80004664:	03f71713          	slli	a4,a4,0x3f
    80004668:	00970713          	addi	a4,a4,9
    8000466c:	0ce79663          	bne	a5,a4,80004738 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            changePrivMode();
            break;
        }
        case hwInterrupt:
        {
            KConsole::getCharactersFromConsole();
    80004670:	fffff097          	auipc	ra,0xfffff
    80004674:	e48080e7          	jalr	-440(ra) # 800034b8 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80004678:	00002097          	auipc	ra,0x2
    8000467c:	9bc080e7          	jalr	-1604(ra) # 80006034 <plic_claim>
    80004680:	00002097          	auipc	ra,0x2
    80004684:	9ec080e7          	jalr	-1556(ra) # 8000606c <plic_complete>
            break;
    80004688:	0b00006f          	j	80004738 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    8000468c:	ffffe097          	auipc	ra,0xffffe
    80004690:	36c080e7          	jalr	876(ra) # 800029f8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004694:	0a40006f          	j	80004738 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004698:	ffffe097          	auipc	ra,0xffffe
    8000469c:	360080e7          	jalr	864(ra) # 800029f8 <_ZN3PCB17threadExitHandlerEv>
            break;
    800046a0:	0980006f          	j	80004738 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    800046a4:	ffffe097          	auipc	ra,0xffffe
    800046a8:	354080e7          	jalr	852(ra) # 800029f8 <_ZN3PCB17threadExitHandlerEv>
            break;
    800046ac:	08c0006f          	j	80004738 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800046b0:	141027f3          	csrr	a5,sepc
    800046b4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800046b8:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    800046bc:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800046c0:	100027f3          	csrr	a5,sstatus
    800046c4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800046c8:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800046cc:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800046d0:	00200793          	li	a5,2
    800046d4:	1447b073          	csrc	sip,a5
            totalTime++;
    800046d8:	00004717          	auipc	a4,0x4
    800046dc:	3c870713          	addi	a4,a4,968 # 80008aa0 <_ZN5Riscv12finishSystemE>
    800046e0:	02873783          	ld	a5,40(a4)
    800046e4:	00178793          	addi	a5,a5,1
    800046e8:	02f73423          	sd	a5,40(a4)
            PCB::timeSliceCounter++;
    800046ec:	00004497          	auipc	s1,0x4
    800046f0:	24c4b483          	ld	s1,588(s1) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x50>
    800046f4:	0004b783          	ld	a5,0(s1)
    800046f8:	00178793          	addi	a5,a5,1
    800046fc:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80004700:	fffff097          	auipc	ra,0xfffff
    80004704:	2f4080e7          	jalr	756(ra) # 800039f4 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80004708:	00004797          	auipc	a5,0x4
    8000470c:	2787b783          	ld	a5,632(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004710:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80004714:	0187b783          	ld	a5,24(a5)
    80004718:	0004b703          	ld	a4,0(s1)
    8000471c:	02f77863          	bgeu	a4,a5,8000474c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            Riscv::w_sstatus(sstatus);
    80004720:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004724:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004728:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000472c:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004730:	00000097          	auipc	ra,0x0
    80004734:	e68080e7          	jalr	-408(ra) # 80004598 <_ZN5Riscv14changePrivModeEv>
            Riscv::w_sepc(sepc);
            changePrivMode();
            break;
        }
    }
}
    80004738:	06813083          	ld	ra,104(sp)
    8000473c:	06013403          	ld	s0,96(sp)
    80004740:	05813483          	ld	s1,88(sp)
    80004744:	07010113          	addi	sp,sp,112
    80004748:	00008067          	ret
                PCB::timeSliceCounter = 0;
    8000474c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80004750:	ffffe097          	auipc	ra,0xffffe
    80004754:	038080e7          	jalr	56(ra) # 80002788 <_ZN3PCB8dispatchEv>
    80004758:	fc9ff06f          	j	80004720 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    8000475c:	ffffe097          	auipc	ra,0xffffe
    80004760:	29c080e7          	jalr	668(ra) # 800029f8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004764:	fd5ff06f          	j	80004738 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004768:	ffffe097          	auipc	ra,0xffffe
    8000476c:	290080e7          	jalr	656(ra) # 800029f8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004770:	fc9ff06f          	j	80004738 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004774:	ffffe097          	auipc	ra,0xffffe
    80004778:	284080e7          	jalr	644(ra) # 800029f8 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000477c:	fbdff06f          	j	80004738 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004780:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004784:	14102773          	csrr	a4,sepc
    80004788:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    8000478c:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004790:	00470713          	addi	a4,a4,4
    80004794:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004798:	10002773          	csrr	a4,sstatus
    8000479c:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    800047a0:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800047a4:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    800047a8:	04300713          	li	a4,67
    800047ac:	02f76463          	bltu	a4,a5,800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    800047b0:	00279793          	slli	a5,a5,0x2
    800047b4:	00004717          	auipc	a4,0x4
    800047b8:	c5070713          	addi	a4,a4,-944 # 80008404 <CONSOLE_STATUS+0x3f4>
    800047bc:	00e787b3          	add	a5,a5,a4
    800047c0:	0007a783          	lw	a5,0(a5)
    800047c4:	00e787b3          	add	a5,a5,a4
    800047c8:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    800047cc:	00000097          	auipc	ra,0x0
    800047d0:	4f0080e7          	jalr	1264(ra) # 80004cbc <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    800047d4:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800047d8:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800047dc:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800047e0:	14179073          	csrw	sepc,a5
            changePrivMode();
    800047e4:	00000097          	auipc	ra,0x0
    800047e8:	db4080e7          	jalr	-588(ra) # 80004598 <_ZN5Riscv14changePrivModeEv>
}
    800047ec:	f4dff06f          	j	80004738 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
                    MemoryAllocator::memFreeHandler();
    800047f0:	00000097          	auipc	ra,0x0
    800047f4:	53c080e7          	jalr	1340(ra) # 80004d2c <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    800047f8:	fddff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadMakePCBHandler();
    800047fc:	ffffe097          	auipc	ra,0xffffe
    80004800:	3c4080e7          	jalr	964(ra) # 80002bc0 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80004804:	fd1ff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadCreateHandler();
    80004808:	ffffe097          	auipc	ra,0xffffe
    8000480c:	2d0080e7          	jalr	720(ra) # 80002ad8 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004810:	fc5ff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadStartHandler();
    80004814:	ffffe097          	auipc	ra,0xffffe
    80004818:	368080e7          	jalr	872(ra) # 80002b7c <_ZN3PCB18threadStartHandlerEv>
                    break;
    8000481c:	fb9ff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDispatchHandler();
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	224080e7          	jalr	548(ra) # 80002a44 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80004828:	fadff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadExitHandler();
    8000482c:	ffffe097          	auipc	ra,0xffffe
    80004830:	1cc080e7          	jalr	460(ra) # 800029f8 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80004834:	fa1ff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadSleepHandler();
    80004838:	ffffe097          	auipc	ra,0xffffe
    8000483c:	23c080e7          	jalr	572(ra) # 80002a74 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80004840:	f95ff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDelPCBHandler();
    80004844:	ffffe097          	auipc	ra,0xffffe
    80004848:	414080e7          	jalr	1044(ra) # 80002c58 <_ZN3PCB19threadDelPCBHandlerEv>
                    break;
    8000484c:	f89ff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semOpenHandler();
    80004850:	00001097          	auipc	ra,0x1
    80004854:	dec080e7          	jalr	-532(ra) # 8000563c <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004858:	f7dff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semWaitHandler();
    8000485c:	00001097          	auipc	ra,0x1
    80004860:	e94080e7          	jalr	-364(ra) # 800056f0 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80004864:	f71ff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semSignalHandler();
    80004868:	00001097          	auipc	ra,0x1
    8000486c:	edc080e7          	jalr	-292(ra) # 80005744 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004870:	f65ff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semCloseHandler();
    80004874:	00001097          	auipc	ra,0x1
    80004878:	f14080e7          	jalr	-236(ra) # 80005788 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    8000487c:	f59ff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getcHandler();
    80004880:	fffff097          	auipc	ra,0xfffff
    80004884:	e3c080e7          	jalr	-452(ra) # 800036bc <_ZN8KConsole11getcHandlerEv>
                    break;
    80004888:	f4dff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::putcHandler();
    8000488c:	fffff097          	auipc	ra,0xfffff
    80004890:	e00080e7          	jalr	-512(ra) # 8000368c <_ZN8KConsole11putcHandlerEv>
                    break;
    80004894:	f41ff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getCharHandler();
    80004898:	fffff097          	auipc	ra,0xfffff
    8000489c:	f80080e7          	jalr	-128(ra) # 80003818 <_ZN8KConsole14getCharHandlerEv>
                    break;
    800048a0:	f35ff06f          	j	800047d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>

00000000800048a4 <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    800048a4:	ff010113          	addi	sp,sp,-16
    800048a8:	00813423          	sd	s0,8(sp)
    800048ac:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800048b0:	00004717          	auipc	a4,0x4
    800048b4:	22072703          	lw	a4,544(a4) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800048b8:	00100793          	li	a5,1
    800048bc:	02f70c63          	beq	a4,a5,800048f4 <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    800048c0:	00004797          	auipc	a5,0x4
    800048c4:	21078793          	addi	a5,a5,528 # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800048c8:	00100713          	li	a4,1
    800048cc:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800048d0:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    800048d4:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    800048d8:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    800048dc:	00004797          	auipc	a5,0x4
    800048e0:	0ac7b783          	ld	a5,172(a5) # 80008988 <_GLOBAL_OFFSET_TABLE_+0xa0>
    800048e4:	0007b783          	ld	a5,0(a5)
    800048e8:	40a787b3          	sub	a5,a5,a0
    800048ec:	ff178793          	addi	a5,a5,-15
    800048f0:	00f53023          	sd	a5,0(a0)
}
    800048f4:	00813403          	ld	s0,8(sp)
    800048f8:	01010113          	addi	sp,sp,16
    800048fc:	00008067          	ret

0000000080004900 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004900:	ff010113          	addi	sp,sp,-16
    80004904:	00813423          	sd	s0,8(sp)
    80004908:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    8000490c:	00004797          	auipc	a5,0x4
    80004910:	1c47a783          	lw	a5,452(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004914:	02078a63          	beqz	a5,80004948 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004918:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    8000491c:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    80004920:	00004797          	auipc	a5,0x4
    80004924:	1b87b783          	ld	a5,440(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    80004928:	02078663          	beqz	a5,80004954 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    8000492c:	00004717          	auipc	a4,0x4
    80004930:	05c73703          	ld	a4,92(a4) # 80008988 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80004934:	00073703          	ld	a4,0(a4)
    80004938:	02c76463          	bltu	a4,a2,80004960 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    8000493c:	00863783          	ld	a5,8(a2)
    80004940:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    80004944:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004948:	00813403          	ld	s0,8(sp)
    8000494c:	01010113          	addi	sp,sp,16
    80004950:	00008067          	ret
        headAllocated = newAllocated;
    80004954:	00004797          	auipc	a5,0x4
    80004958:	18a7b223          	sd	a0,388(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    8000495c:	fedff06f          	j	80004948 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    80004960:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    80004964:	00004797          	auipc	a5,0x4
    80004968:	16a7ba23          	sd	a0,372(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    8000496c:	fddff06f          	j	80004948 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

0000000080004970 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004970:	ff010113          	addi	sp,sp,-16
    80004974:	00813423          	sd	s0,8(sp)
    80004978:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    8000497c:	00004797          	auipc	a5,0x4
    80004980:	1547a783          	lw	a5,340(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004984:	02078c63          	beqz	a5,800049bc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004988:	00004797          	auipc	a5,0x4
    8000498c:	1507b783          	ld	a5,336(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004990:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004994:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004998:	00000713          	li	a4,0
    while(curr != 0)
    8000499c:	00078c63          	beqz	a5,800049b4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    800049a0:	00f56863          	bltu	a0,a5,800049b0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    800049a4:	00078713          	mv	a4,a5
        curr = curr->next;
    800049a8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800049ac:	ff1ff06f          	j	8000499c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    800049b0:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    800049b4:	00070a63          	beqz	a4,800049c8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800049b8:	00a73423          	sd	a0,8(a4)
}
    800049bc:	00813403          	ld	s0,8(sp)
    800049c0:	01010113          	addi	sp,sp,16
    800049c4:	00008067          	ret
        headAllocated = newAllocated;
    800049c8:	00004797          	auipc	a5,0x4
    800049cc:	10a7b823          	sd	a0,272(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    800049d0:	fedff06f          	j	800049bc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

00000000800049d4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    800049d4:	00004797          	auipc	a5,0x4
    800049d8:	0fc7a783          	lw	a5,252(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800049dc:	0e078e63          	beqz	a5,80004ad8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    800049e0:	fe010113          	addi	sp,sp,-32
    800049e4:	00113c23          	sd	ra,24(sp)
    800049e8:	00813823          	sd	s0,16(sp)
    800049ec:	00913423          	sd	s1,8(sp)
    800049f0:	02010413          	addi	s0,sp,32
    800049f4:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800049f8:	00004497          	auipc	s1,0x4
    800049fc:	0e84b483          	ld	s1,232(s1) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004a00:	00000713          	li	a4,0
    while(curr != 0)
    80004a04:	0a048e63          	beqz	s1,80004ac0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    80004a08:	0004b783          	ld	a5,0(s1)
    80004a0c:	00b7f863          	bgeu	a5,a1,80004a1c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004a10:	00048713          	mv	a4,s1
        curr = curr->next;
    80004a14:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004a18:	fedff06f          	j	80004a04 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004a1c:	01058693          	addi	a3,a1,16
    80004a20:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80004a24:	01078613          	addi	a2,a5,16
    80004a28:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80004a2c:	00004517          	auipc	a0,0x4
    80004a30:	f5c53503          	ld	a0,-164(a0) # 80008988 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80004a34:	00053503          	ld	a0,0(a0)
    80004a38:	06d56063          	bltu	a0,a3,80004a98 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    80004a3c:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    80004a40:	01000813          	li	a6,16
    80004a44:	02a87663          	bgeu	a6,a0,80004a70 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80004a48:	0084b783          	ld	a5,8(s1)
    80004a4c:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004a50:	ff050513          	addi	a0,a0,-16
    80004a54:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    80004a58:	00070663          	beqz	a4,80004a64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80004a5c:	00d73423          	sd	a3,8(a4)
    80004a60:	0400006f          	j	80004aa0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004a64:	00004797          	auipc	a5,0x4
    80004a68:	06d7be23          	sd	a3,124(a5) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    80004a6c:	0340006f          	j	80004aa0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80004a70:	00070a63          	beqz	a4,80004a84 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004a74:	0084b683          	ld	a3,8(s1)
    80004a78:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004a7c:	00078593          	mv	a1,a5
    80004a80:	0200006f          	j	80004aa0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004a84:	0084b703          	ld	a4,8(s1)
    80004a88:	00004697          	auipc	a3,0x4
    80004a8c:	04e6bc23          	sd	a4,88(a3) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004a90:	00078593          	mv	a1,a5
    80004a94:	00c0006f          	j	80004aa0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004a98:	00070e63          	beqz	a4,80004ab4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    80004a9c:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004aa0:	00048513          	mv	a0,s1
    80004aa4:	00000097          	auipc	ra,0x0
    80004aa8:	e5c080e7          	jalr	-420(ra) # 80004900 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004aac:	01048513          	addi	a0,s1,16
            break;
    80004ab0:	0140006f          	j	80004ac4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004ab4:	00004797          	auipc	a5,0x4
    80004ab8:	0207b623          	sd	zero,44(a5) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    80004abc:	fe5ff06f          	j	80004aa0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004ac0:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004ac4:	01813083          	ld	ra,24(sp)
    80004ac8:	01013403          	ld	s0,16(sp)
    80004acc:	00813483          	ld	s1,8(sp)
    80004ad0:	02010113          	addi	sp,sp,32
    80004ad4:	00008067          	ret
        return nullptr;
    80004ad8:	00000513          	li	a0,0
}
    80004adc:	00008067          	ret

0000000080004ae0 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004ae0:	ff010113          	addi	sp,sp,-16
    80004ae4:	00113423          	sd	ra,8(sp)
    80004ae8:	00813023          	sd	s0,0(sp)
    80004aec:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004af0:	00000097          	auipc	ra,0x0
    80004af4:	ee4080e7          	jalr	-284(ra) # 800049d4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004af8:	00813083          	ld	ra,8(sp)
    80004afc:	00013403          	ld	s0,0(sp)
    80004b00:	01010113          	addi	sp,sp,16
    80004b04:	00008067          	ret

0000000080004b08 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004b08:	ff010113          	addi	sp,sp,-16
    80004b0c:	00813423          	sd	s0,8(sp)
    80004b10:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004b14:	00004797          	auipc	a5,0x4
    80004b18:	fbc7a783          	lw	a5,-68(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004b1c:	06078263          	beqz	a5,80004b80 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004b20:	00004797          	auipc	a5,0x4
    80004b24:	fc07b783          	ld	a5,-64(a5) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004b28:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    80004b2c:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    80004b30:	00000713          	li	a4,0
    while(curr != 0)
    80004b34:	00078c63          	beqz	a5,80004b4c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004b38:	00f56863          	bltu	a0,a5,80004b48 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004b3c:	00078713          	mv	a4,a5
        curr = curr->next;
    80004b40:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004b44:	ff1ff06f          	j	80004b34 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    80004b48:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004b4c:	04070063          	beqz	a4,80004b8c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004b50:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004b54:	00853783          	ld	a5,8(a0)
    80004b58:	00078a63          	beqz	a5,80004b6c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    80004b5c:	00053603          	ld	a2,0(a0)
    80004b60:	01060693          	addi	a3,a2,16
    80004b64:	00d506b3          	add	a3,a0,a3
    80004b68:	02d78863          	beq	a5,a3,80004b98 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004b6c:	00070a63          	beqz	a4,80004b80 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    80004b70:	00073683          	ld	a3,0(a4)
    80004b74:	01068793          	addi	a5,a3,16
    80004b78:	00f707b3          	add	a5,a4,a5
    80004b7c:	02a78c63          	beq	a5,a0,80004bb4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004b80:	00813403          	ld	s0,8(sp)
    80004b84:	01010113          	addi	sp,sp,16
    80004b88:	00008067          	ret
        headFree = newSegment;
    80004b8c:	00004797          	auipc	a5,0x4
    80004b90:	f4a7ba23          	sd	a0,-172(a5) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    80004b94:	fc1ff06f          	j	80004b54 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004b98:	0007b683          	ld	a3,0(a5)
    80004b9c:	00d60633          	add	a2,a2,a3
    80004ba0:	01060613          	addi	a2,a2,16
    80004ba4:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004ba8:	0087b783          	ld	a5,8(a5)
    80004bac:	00f53423          	sd	a5,8(a0)
    80004bb0:	fbdff06f          	j	80004b6c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004bb4:	00053783          	ld	a5,0(a0)
    80004bb8:	00f686b3          	add	a3,a3,a5
    80004bbc:	01068693          	addi	a3,a3,16
    80004bc0:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004bc4:	00853783          	ld	a5,8(a0)
    80004bc8:	00f73423          	sd	a5,8(a4)
    80004bcc:	fb5ff06f          	j	80004b80 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

0000000080004bd0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004bd0:	00004797          	auipc	a5,0x4
    80004bd4:	f007a783          	lw	a5,-256(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004bd8:	08078263          	beqz	a5,80004c5c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    80004bdc:	fe010113          	addi	sp,sp,-32
    80004be0:	00113c23          	sd	ra,24(sp)
    80004be4:	00813823          	sd	s0,16(sp)
    80004be8:	00913423          	sd	s1,8(sp)
    80004bec:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004bf0:	00004497          	auipc	s1,0x4
    80004bf4:	ee84b483          	ld	s1,-280(s1) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004bf8:	00000713          	li	a4,0
    while(curr != 0)
    80004bfc:	02048a63          	beqz	s1,80004c30 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004c00:	01048793          	addi	a5,s1,16
    80004c04:	00a78863          	beq	a5,a0,80004c14 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004c08:	00048713          	mv	a4,s1
        curr = curr->next;
    80004c0c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004c10:	fedff06f          	j	80004bfc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80004c14:	02070c63          	beqz	a4,80004c4c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004c18:	0084b783          	ld	a5,8(s1)
    80004c1c:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004c20:	0004b583          	ld	a1,0(s1)
    80004c24:	00048513          	mv	a0,s1
    80004c28:	00000097          	auipc	ra,0x0
    80004c2c:	ee0080e7          	jalr	-288(ra) # 80004b08 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004c30:	02048a63          	beqz	s1,80004c64 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004c34:	00000513          	li	a0,0
    else
        return 1;
}
    80004c38:	01813083          	ld	ra,24(sp)
    80004c3c:	01013403          	ld	s0,16(sp)
    80004c40:	00813483          	ld	s1,8(sp)
    80004c44:	02010113          	addi	sp,sp,32
    80004c48:	00008067          	ret
                headAllocated = curr->next;
    80004c4c:	0084b783          	ld	a5,8(s1)
    80004c50:	00004717          	auipc	a4,0x4
    80004c54:	e8f73423          	sd	a5,-376(a4) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    80004c58:	fc9ff06f          	j	80004c20 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    80004c5c:	00100513          	li	a0,1
}
    80004c60:	00008067          	ret
        return 1;
    80004c64:	00100513          	li	a0,1
    80004c68:	fd1ff06f          	j	80004c38 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

0000000080004c6c <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004c6c:	ff010113          	addi	sp,sp,-16
    80004c70:	00113423          	sd	ra,8(sp)
    80004c74:	00813023          	sd	s0,0(sp)
    80004c78:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004c7c:	00000097          	auipc	ra,0x0
    80004c80:	f54080e7          	jalr	-172(ra) # 80004bd0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004c84:	00813083          	ld	ra,8(sp)
    80004c88:	00013403          	ld	s0,0(sp)
    80004c8c:	01010113          	addi	sp,sp,16
    80004c90:	00008067          	ret

0000000080004c94 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004c94:	ff010113          	addi	sp,sp,-16
    80004c98:	00113423          	sd	ra,8(sp)
    80004c9c:	00813023          	sd	s0,0(sp)
    80004ca0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004ca4:	00000097          	auipc	ra,0x0
    80004ca8:	e3c080e7          	jalr	-452(ra) # 80004ae0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004cac:	00813083          	ld	ra,8(sp)
    80004cb0:	00013403          	ld	s0,0(sp)
    80004cb4:	01010113          	addi	sp,sp,16
    80004cb8:	00008067          	ret

0000000080004cbc <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004cbc:	ff010113          	addi	sp,sp,-16
    80004cc0:	00113423          	sd	ra,8(sp)
    80004cc4:	00813023          	sd	s0,0(sp)
    80004cc8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004ccc:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004cd0:	00651513          	slli	a0,a0,0x6
    80004cd4:	00000097          	auipc	ra,0x0
    80004cd8:	fc0080e7          	jalr	-64(ra) # 80004c94 <_ZN15MemoryAllocator7kmallocEm>
    if(allocatedAddr == nullptr)
    80004cdc:	02050063          	beqz	a0,80004cfc <_ZN15MemoryAllocator15memAllocHandlerEv+0x40>
        __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004ce0:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004ce4:	00000097          	auipc	ra,0x0
    80004ce8:	87c080e7          	jalr	-1924(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004cec:	00813083          	ld	ra,8(sp)
    80004cf0:	00013403          	ld	s0,0(sp)
    80004cf4:	01010113          	addi	sp,sp,16
    80004cf8:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004cfc:	00000513          	li	a0,0
    80004d00:	fe5ff06f          	j	80004ce4 <_ZN15MemoryAllocator15memAllocHandlerEv+0x28>

0000000080004d04 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004d04:	ff010113          	addi	sp,sp,-16
    80004d08:	00113423          	sd	ra,8(sp)
    80004d0c:	00813023          	sd	s0,0(sp)
    80004d10:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004d14:	00000097          	auipc	ra,0x0
    80004d18:	f58080e7          	jalr	-168(ra) # 80004c6c <_ZN15MemoryAllocator8mem_freeEPv>
    80004d1c:	00813083          	ld	ra,8(sp)
    80004d20:	00013403          	ld	s0,0(sp)
    80004d24:	01010113          	addi	sp,sp,16
    80004d28:	00008067          	ret

0000000080004d2c <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004d2c:	ff010113          	addi	sp,sp,-16
    80004d30:	00113423          	sd	ra,8(sp)
    80004d34:	00813023          	sd	s0,0(sp)
    80004d38:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004d3c:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004d40:	00000097          	auipc	ra,0x0
    80004d44:	fc4080e7          	jalr	-60(ra) # 80004d04 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004d48:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004d4c:	00000097          	auipc	ra,0x0
    80004d50:	814080e7          	jalr	-2028(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004d54:	00813083          	ld	ra,8(sp)
    80004d58:	00013403          	ld	s0,0(sp)
    80004d5c:	01010113          	addi	sp,sp,16
    80004d60:	00008067          	ret

0000000080004d64 <_Z12slabInitTestv>:
#include "../../h/slabTests.hpp"
#include "../../h/KConsole.hpp"

void slabInitTest()
{
    80004d64:	ff010113          	addi	sp,sp,-16
    80004d68:	00113423          	sd	ra,8(sp)
    80004d6c:	00813023          	sd	s0,0(sp)
    80004d70:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004d74:	00f00593          	li	a1,15
    80004d78:	00004797          	auipc	a5,0x4
    80004d7c:	b887b783          	ld	a5,-1144(a5) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004d80:	0007b503          	ld	a0,0(a5)
    80004d84:	ffffd097          	auipc	ra,0xffffd
    80004d88:	03c080e7          	jalr	60(ra) # 80001dc0 <_Z9kmem_initPvi>
}
    80004d8c:	00813083          	ld	ra,8(sp)
    80004d90:	00013403          	ld	s0,0(sp)
    80004d94:	01010113          	addi	sp,sp,16
    80004d98:	00008067          	ret

0000000080004d9c <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004d9c:	fe010113          	addi	sp,sp,-32
    80004da0:	00113c23          	sd	ra,24(sp)
    80004da4:	00813823          	sd	s0,16(sp)
    80004da8:	00913423          	sd	s1,8(sp)
    80004dac:	01213023          	sd	s2,0(sp)
    80004db0:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004db4:	00f00593          	li	a1,15
    80004db8:	00004797          	auipc	a5,0x4
    80004dbc:	b487b783          	ld	a5,-1208(a5) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004dc0:	0007b503          	ld	a0,0(a5)
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	ffc080e7          	jalr	-4(ra) # 80001dc0 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004dcc:	00000693          	li	a3,0
    80004dd0:	00000613          	li	a2,0
    80004dd4:	00a00593          	li	a1,10
    80004dd8:	00003517          	auipc	a0,0x3
    80004ddc:	74050513          	addi	a0,a0,1856 # 80008518 <CONSOLE_STATUS+0x508>
    80004de0:	ffffd097          	auipc	ra,0xffffd
    80004de4:	f3c080e7          	jalr	-196(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004de8:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004dec:	00000693          	li	a3,0
    80004df0:	00000613          	li	a2,0
    80004df4:	00a00593          	li	a1,10
    80004df8:	00003517          	auipc	a0,0x3
    80004dfc:	73050513          	addi	a0,a0,1840 # 80008528 <CONSOLE_STATUS+0x518>
    80004e00:	ffffd097          	auipc	ra,0xffffd
    80004e04:	f1c080e7          	jalr	-228(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004e08:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004e0c:	00000693          	li	a3,0
    80004e10:	00000613          	li	a2,0
    80004e14:	00a00593          	li	a1,10
    80004e18:	00003517          	auipc	a0,0x3
    80004e1c:	72050513          	addi	a0,a0,1824 # 80008538 <CONSOLE_STATUS+0x528>
    80004e20:	ffffd097          	auipc	ra,0xffffd
    80004e24:	efc080e7          	jalr	-260(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004e28:	00048a63          	beqz	s1,80004e3c <_Z19slabCacheCreateTestv+0xa0>
    80004e2c:	00090863          	beqz	s2,80004e3c <_Z19slabCacheCreateTestv+0xa0>
    80004e30:	00050663          	beqz	a0,80004e3c <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004e34:	ffffd097          	auipc	ra,0xffffd
    80004e38:	2ec080e7          	jalr	748(ra) # 80002120 <_Z22printSlabAllocatorInfov>
}
    80004e3c:	01813083          	ld	ra,24(sp)
    80004e40:	01013403          	ld	s0,16(sp)
    80004e44:	00813483          	ld	s1,8(sp)
    80004e48:	00013903          	ld	s2,0(sp)
    80004e4c:	02010113          	addi	sp,sp,32
    80004e50:	00008067          	ret

0000000080004e54 <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004e54:	fe010113          	addi	sp,sp,-32
    80004e58:	00113c23          	sd	ra,24(sp)
    80004e5c:	00813823          	sd	s0,16(sp)
    80004e60:	00913423          	sd	s1,8(sp)
    80004e64:	01213023          	sd	s2,0(sp)
    80004e68:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004e6c:	00f00593          	li	a1,15
    80004e70:	00004797          	auipc	a5,0x4
    80004e74:	a907b783          	ld	a5,-1392(a5) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004e78:	0007b503          	ld	a0,0(a5)
    80004e7c:	ffffd097          	auipc	ra,0xffffd
    80004e80:	f44080e7          	jalr	-188(ra) # 80001dc0 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004e84:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004e88:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004e8c:	04400793          	li	a5,68
    80004e90:	0297c663          	blt	a5,s1,80004ebc <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004e94:	00000693          	li	a3,0
    80004e98:	00000613          	li	a2,0
    80004e9c:	00a00593          	li	a1,10
    80004ea0:	00003517          	auipc	a0,0x3
    80004ea4:	67850513          	addi	a0,a0,1656 # 80008518 <CONSOLE_STATUS+0x508>
    80004ea8:	ffffd097          	auipc	ra,0xffffd
    80004eac:	e74080e7          	jalr	-396(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004eb0:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004eb4:	0014849b          	addiw	s1,s1,1
    80004eb8:	fd5ff06f          	j	80004e8c <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004ebc:	ffffd097          	auipc	ra,0xffffd
    80004ec0:	264080e7          	jalr	612(ra) # 80002120 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004ec4:	00090513          	mv	a0,s2
    80004ec8:	ffffd097          	auipc	ra,0xffffd
    80004ecc:	5c0080e7          	jalr	1472(ra) # 80002488 <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004ed0:	ffffd097          	auipc	ra,0xffffd
    80004ed4:	250080e7          	jalr	592(ra) # 80002120 <_Z22printSlabAllocatorInfov>
}
    80004ed8:	01813083          	ld	ra,24(sp)
    80004edc:	01013403          	ld	s0,16(sp)
    80004ee0:	00813483          	ld	s1,8(sp)
    80004ee4:	00013903          	ld	s2,0(sp)
    80004ee8:	02010113          	addi	sp,sp,32
    80004eec:	00008067          	ret

0000000080004ef0 <_Z11testKmallocv>:

void testKmalloc()
{
    80004ef0:	fc010113          	addi	sp,sp,-64
    80004ef4:	02113c23          	sd	ra,56(sp)
    80004ef8:	02813823          	sd	s0,48(sp)
    80004efc:	02913423          	sd	s1,40(sp)
    80004f00:	03213023          	sd	s2,32(sp)
    80004f04:	01313c23          	sd	s3,24(sp)
    80004f08:	01413823          	sd	s4,16(sp)
    80004f0c:	01513423          	sd	s5,8(sp)
    80004f10:	04010413          	addi	s0,sp,64
    void** x = (void**)kmalloc(sizeof(void*)*200);
    80004f14:	64000513          	li	a0,1600
    80004f18:	ffffd097          	auipc	ra,0xffffd
    80004f1c:	2f0080e7          	jalr	752(ra) # 80002208 <_Z7kmallocm>
    80004f20:	00050a13          	mv	s4,a0
    int indeks = 0;
    for(int i = 0;i < 10;i++)
    80004f24:	00000a93          	li	s5,0
    int indeks = 0;
    80004f28:	00000493          	li	s1,0
    80004f2c:	0800006f          	j	80004fac <_Z11testKmallocv+0xbc>
    {
        for(int j = 5;j<=18;j++)
    80004f30:	0019091b          	addiw	s2,s2,1
        {
            void* adr = kmalloc(1 << j);
            x[indeks++] = adr;
    80004f34:	00098493          	mv	s1,s3
        for(int j = 5;j<=18;j++)
    80004f38:	01200793          	li	a5,18
    80004f3c:	0727c663          	blt	a5,s2,80004fa8 <_Z11testKmallocv+0xb8>
            void* adr = kmalloc(1 << j);
    80004f40:	00100513          	li	a0,1
    80004f44:	0125153b          	sllw	a0,a0,s2
    80004f48:	ffffd097          	auipc	ra,0xffffd
    80004f4c:	2c0080e7          	jalr	704(ra) # 80002208 <_Z7kmallocm>
            x[indeks++] = adr;
    80004f50:	0014899b          	addiw	s3,s1,1
    80004f54:	00349493          	slli	s1,s1,0x3
    80004f58:	009a04b3          	add	s1,s4,s1
    80004f5c:	00a4b023          	sd	a0,0(s1)
            if(adr == nullptr)
    80004f60:	fc0518e3          	bnez	a0,80004f30 <_Z11testKmallocv+0x40>
            {
                KConsole::trapPrintString("Nullptr je\n");
    80004f64:	00003517          	auipc	a0,0x3
    80004f68:	5e450513          	addi	a0,a0,1508 # 80008548 <CONSOLE_STATUS+0x538>
    80004f6c:	fffff097          	auipc	ra,0xfffff
    80004f70:	8e0080e7          	jalr	-1824(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
                KConsole::trapPrintStringInt("i ", i);
    80004f74:	00a00613          	li	a2,10
    80004f78:	000a8593          	mv	a1,s5
    80004f7c:	00003517          	auipc	a0,0x3
    80004f80:	5dc50513          	addi	a0,a0,1500 # 80008558 <CONSOLE_STATUS+0x548>
    80004f84:	fffff097          	auipc	ra,0xfffff
    80004f88:	9a0080e7          	jalr	-1632(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
                KConsole::trapPrintStringInt("j ", j);
    80004f8c:	00a00613          	li	a2,10
    80004f90:	00090593          	mv	a1,s2
    80004f94:	00003517          	auipc	a0,0x3
    80004f98:	5cc50513          	addi	a0,a0,1484 # 80008560 <CONSOLE_STATUS+0x550>
    80004f9c:	fffff097          	auipc	ra,0xfffff
    80004fa0:	988080e7          	jalr	-1656(ra) # 80003924 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    80004fa4:	f8dff06f          	j	80004f30 <_Z11testKmallocv+0x40>
    for(int i = 0;i < 10;i++)
    80004fa8:	001a8a9b          	addiw	s5,s5,1
    80004fac:	00900793          	li	a5,9
    80004fb0:	0157c663          	blt	a5,s5,80004fbc <_Z11testKmallocv+0xcc>
        for(int j = 5;j<=18;j++)
    80004fb4:	00500913          	li	s2,5
    80004fb8:	f81ff06f          	j	80004f38 <_Z11testKmallocv+0x48>
            }
        }
    }
    for(int i = 0; i < indeks;i++)
    80004fbc:	00000913          	li	s2,0
    80004fc0:	02995063          	bge	s2,s1,80004fe0 <_Z11testKmallocv+0xf0>
    {
      kfree(x[i]);
    80004fc4:	00391793          	slli	a5,s2,0x3
    80004fc8:	00fa07b3          	add	a5,s4,a5
    80004fcc:	0007b503          	ld	a0,0(a5)
    80004fd0:	ffffd097          	auipc	ra,0xffffd
    80004fd4:	3d4080e7          	jalr	980(ra) # 800023a4 <_Z5kfreePKv>
    for(int i = 0; i < indeks;i++)
    80004fd8:	0019091b          	addiw	s2,s2,1
    80004fdc:	fe5ff06f          	j	80004fc0 <_Z11testKmallocv+0xd0>
    }
    printSlabAllocatorInfo();
    80004fe0:	ffffd097          	auipc	ra,0xffffd
    80004fe4:	140080e7          	jalr	320(ra) # 80002120 <_Z22printSlabAllocatorInfov>
}
    80004fe8:	03813083          	ld	ra,56(sp)
    80004fec:	03013403          	ld	s0,48(sp)
    80004ff0:	02813483          	ld	s1,40(sp)
    80004ff4:	02013903          	ld	s2,32(sp)
    80004ff8:	01813983          	ld	s3,24(sp)
    80004ffc:	01013a03          	ld	s4,16(sp)
    80005000:	00813a83          	ld	s5,8(sp)
    80005004:	04010113          	addi	sp,sp,64
    80005008:	00008067          	ret

000000008000500c <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    8000500c:	ff010113          	addi	sp,sp,-16
    80005010:	00813423          	sd	s0,8(sp)
    80005014:	01010413          	addi	s0,sp,16
    for (int j = 0; j < size; j++) {
    80005018:	00000793          	li	a5,0
    8000501c:	00b7da63          	bge	a5,a1,80005030 <_Z6memsetPKvii+0x24>
        *((char *)data + j) = value;
    80005020:	00f50733          	add	a4,a0,a5
    80005024:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    80005028:	0017879b          	addiw	a5,a5,1
    8000502c:	ff1ff06f          	j	8000501c <_Z6memsetPKvii+0x10>
    }
}
    80005030:	00813403          	ld	s0,8(sp)
    80005034:	01010113          	addi	sp,sp,16
    80005038:	00008067          	ret

000000008000503c <_Z9constructPv>:

void construct(void *data) {
    8000503c:	ff010113          	addi	sp,sp,-16
    80005040:	00113423          	sd	ra,8(sp)
    80005044:	00813023          	sd	s0,0(sp)
    80005048:	01010413          	addi	s0,sp,16
    //static int i = 1;
    //KConsole::trapPrintInt(i); i++;
    //KConsole::trapPrintString(" Shared object constructed.\n");
    memset(data, shared_size, MASK);
    8000504c:	0a500613          	li	a2,165
    80005050:	00700593          	li	a1,7
    80005054:	00000097          	auipc	ra,0x0
    80005058:	fb8080e7          	jalr	-72(ra) # 8000500c <_Z6memsetPKvii>
}
    8000505c:	00813083          	ld	ra,8(sp)
    80005060:	00013403          	ld	s0,0(sp)
    80005064:	01010113          	addi	sp,sp,16
    80005068:	00008067          	ret

000000008000506c <_Z5checkPvm>:

int check(void *data, size_t size) {
    8000506c:	ff010113          	addi	sp,sp,-16
    80005070:	00813423          	sd	s0,8(sp)
    80005074:	01010413          	addi	s0,sp,16
    80005078:	00050613          	mv	a2,a0
    int ret = 1;
    for (size_t i = 0; i < size; i++) {
    8000507c:	00000793          	li	a5,0
    int ret = 1;
    80005080:	00100513          	li	a0,1
    80005084:	0080006f          	j	8000508c <_Z5checkPvm+0x20>
    for (size_t i = 0; i < size; i++) {
    80005088:	00178793          	addi	a5,a5,1
    8000508c:	00b7fe63          	bgeu	a5,a1,800050a8 <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    80005090:	00f60733          	add	a4,a2,a5
    80005094:	00074683          	lbu	a3,0(a4)
    80005098:	0a500713          	li	a4,165
    8000509c:	fee686e3          	beq	a3,a4,80005088 <_Z5checkPvm+0x1c>
            ret = 0;
    800050a0:	00000513          	li	a0,0
    800050a4:	fe5ff06f          	j	80005088 <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    800050a8:	00813403          	ld	s0,8(sp)
    800050ac:	01010113          	addi	sp,sp,16
    800050b0:	00008067          	ret

00000000800050b4 <_Z4workPv>:
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata)
{
    800050b4:	f8010113          	addi	sp,sp,-128
    800050b8:	06113c23          	sd	ra,120(sp)
    800050bc:	06813823          	sd	s0,112(sp)
    800050c0:	06913423          	sd	s1,104(sp)
    800050c4:	07213023          	sd	s2,96(sp)
    800050c8:	05313c23          	sd	s3,88(sp)
    800050cc:	05413823          	sd	s4,80(sp)
    800050d0:	05513423          	sd	s5,72(sp)
    800050d4:	05613023          	sd	s6,64(sp)
    800050d8:	03713c23          	sd	s7,56(sp)
    800050dc:	03813823          	sd	s8,48(sp)
    800050e0:	03913423          	sd	s9,40(sp)
    800050e4:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    800050e8:	00053c03          	ld	s8,0(a0)
    800050ec:	f9843423          	sd	s8,-120(s0)
    800050f0:	00853783          	ld	a5,8(a0)
    800050f4:	f8f43823          	sd	a5,-112(s0)
    800050f8:	01053783          	ld	a5,16(a0)
    800050fc:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    80005100:	000c079b          	sext.w	a5,s8
    80005104:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    80005108:	00379713          	slli	a4,a5,0x3
    8000510c:	00003797          	auipc	a5,0x3
    80005110:	7b478793          	addi	a5,a5,1972 # 800088c0 <_ZL11CACHE_NAMES>
    80005114:	00e787b3          	add	a5,a5,a4
    80005118:	000c0b13          	mv	s6,s8
    8000511c:	00000693          	li	a3,0
    80005120:	00000613          	li	a2,0
    80005124:	000c0593          	mv	a1,s8
    80005128:	0007b503          	ld	a0,0(a5)
    8000512c:	ffffd097          	auipc	ra,0xffffd
    80005130:	bf0080e7          	jalr	-1040(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005134:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    80005138:	f9842b83          	lw	s7,-104(s0)
    8000513c:	004b9513          	slli	a0,s7,0x4
    80005140:	ffffd097          	auipc	ra,0xffffd
    80005144:	0c8080e7          	jalr	200(ra) # 80002208 <_Z7kmallocm>
    80005148:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    8000514c:	00000493          	li	s1,0
    int size = 0;
    80005150:	00000993          	li	s3,0
    80005154:	0380006f          	j	8000518c <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                KConsole::trapPrintString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    80005158:	00499913          	slli	s2,s3,0x4
    8000515c:	012a8933          	add	s2,s5,s2
    80005160:	000a0513          	mv	a0,s4
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	a80080e7          	jalr	-1408(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    8000516c:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    80005170:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    80005174:	0a500613          	li	a2,165
    80005178:	000c0593          	mv	a1,s8
    8000517c:	00000097          	auipc	ra,0x0
    80005180:	e90080e7          	jalr	-368(ra) # 8000500c <_Z6memsetPKvii>
        }
        size++;
    80005184:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    80005188:	0014849b          	addiw	s1,s1,1
    8000518c:	0574da63          	bge	s1,s7,800051e0 <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    80005190:	06400793          	li	a5,100
    80005194:	02f4e7bb          	remw	a5,s1,a5
    80005198:	fc0790e3          	bnez	a5,80005158 <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    8000519c:	f9043c83          	ld	s9,-112(s0)
    800051a0:	00499913          	slli	s2,s3,0x4
    800051a4:	012a8933          	add	s2,s5,s2
    800051a8:	000c8513          	mv	a0,s9
    800051ac:	ffffd097          	auipc	ra,0xffffd
    800051b0:	a38080e7          	jalr	-1480(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    800051b4:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    800051b8:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    800051bc:	00700593          	li	a1,7
    800051c0:	00000097          	auipc	ra,0x0
    800051c4:	eac080e7          	jalr	-340(ra) # 8000506c <_Z5checkPvm>
    800051c8:	fa051ee3          	bnez	a0,80005184 <_Z4workPv+0xd0>
                KConsole::trapPrintString("Value not correct!");
    800051cc:	00003517          	auipc	a0,0x3
    800051d0:	39c50513          	addi	a0,a0,924 # 80008568 <CONSOLE_STATUS+0x558>
    800051d4:	ffffe097          	auipc	ra,0xffffe
    800051d8:	678080e7          	jalr	1656(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
    800051dc:	fa9ff06f          	j	80005184 <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    800051e0:	000a0513          	mv	a0,s4
    800051e4:	ffffd097          	auipc	ra,0xffffd
    800051e8:	de0080e7          	jalr	-544(ra) # 80001fc4 <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    800051ec:	f9043503          	ld	a0,-112(s0)
    800051f0:	ffffd097          	auipc	ra,0xffffd
    800051f4:	dd4080e7          	jalr	-556(ra) # 80001fc4 <_Z15kmem_cache_infoP12kmem_cache_s>
    //printSlabAllocatorInfo();

    for (int i = 0; i < size; i++) {
    800051f8:	00000913          	li	s2,0
    800051fc:	0300006f          	j	8000522c <_Z4workPv+0x178>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80005200:	000b0593          	mv	a1,s6
    80005204:	0440006f          	j	80005248 <_Z4workPv+0x194>
            KConsole::trapPrintString("Value not correct!");
    80005208:	00003517          	auipc	a0,0x3
    8000520c:	36050513          	addi	a0,a0,864 # 80008568 <CONSOLE_STATUS+0x558>
    80005210:	ffffe097          	auipc	ra,0xffffe
    80005214:	63c080e7          	jalr	1596(ra) # 8000384c <_ZN8KConsole15trapPrintStringEPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    80005218:	0084b583          	ld	a1,8(s1)
    8000521c:	0004b503          	ld	a0,0(s1)
    80005220:	ffffd097          	auipc	ra,0xffffd
    80005224:	c04080e7          	jalr	-1020(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    80005228:	0019091b          	addiw	s2,s2,1
    8000522c:	03395663          	bge	s2,s3,80005258 <_Z4workPv+0x1a4>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80005230:	00491493          	slli	s1,s2,0x4
    80005234:	009a84b3          	add	s1,s5,s1
    80005238:	0084b503          	ld	a0,8(s1)
    8000523c:	0004b783          	ld	a5,0(s1)
    80005240:	fd4780e3          	beq	a5,s4,80005200 <_Z4workPv+0x14c>
    80005244:	00700593          	li	a1,7
    80005248:	00000097          	auipc	ra,0x0
    8000524c:	e24080e7          	jalr	-476(ra) # 8000506c <_Z5checkPvm>
    80005250:	fc0514e3          	bnez	a0,80005218 <_Z4workPv+0x164>
    80005254:	fb5ff06f          	j	80005208 <_Z4workPv+0x154>
    }

    kmem_cache_info(cache);
    80005258:	000a0513          	mv	a0,s4
    8000525c:	ffffd097          	auipc	ra,0xffffd
    80005260:	d68080e7          	jalr	-664(ra) # 80001fc4 <_Z15kmem_cache_infoP12kmem_cache_s>

    //kmem_cache_info(cache);
    //kmem_cache_info(data.shared);
    //printSlabAllocatorInfo();

    kfree(objs);
    80005264:	000a8513          	mv	a0,s5
    80005268:	ffffd097          	auipc	ra,0xffffd
    8000526c:	13c080e7          	jalr	316(ra) # 800023a4 <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    80005270:	000a0513          	mv	a0,s4
    80005274:	ffffd097          	auipc	ra,0xffffd
    80005278:	214080e7          	jalr	532(ra) # 80002488 <_Z18kmem_cache_destroyP12kmem_cache_s>

    //printSlabAllocatorInfo();
}
    8000527c:	07813083          	ld	ra,120(sp)
    80005280:	07013403          	ld	s0,112(sp)
    80005284:	06813483          	ld	s1,104(sp)
    80005288:	06013903          	ld	s2,96(sp)
    8000528c:	05813983          	ld	s3,88(sp)
    80005290:	05013a03          	ld	s4,80(sp)
    80005294:	04813a83          	ld	s5,72(sp)
    80005298:	04013b03          	ld	s6,64(sp)
    8000529c:	03813b83          	ld	s7,56(sp)
    800052a0:	03013c03          	ld	s8,48(sp)
    800052a4:	02813c83          	ld	s9,40(sp)
    800052a8:	08010113          	addi	sp,sp,128
    800052ac:	00008067          	ret

00000000800052b0 <_Z4runsPFvPvEP6data_si>:

void runs(void(*work)(void*), struct data_s* data, int num) {
    800052b0:	fb010113          	addi	sp,sp,-80
    800052b4:	04113423          	sd	ra,72(sp)
    800052b8:	04813023          	sd	s0,64(sp)
    800052bc:	02913c23          	sd	s1,56(sp)
    800052c0:	03213823          	sd	s2,48(sp)
    800052c4:	03313423          	sd	s3,40(sp)
    800052c8:	05010413          	addi	s0,sp,80
    800052cc:	00050993          	mv	s3,a0
    800052d0:	00058913          	mv	s2,a1
    for (int i = 0; i < RUN_NUM; i++) {
    800052d4:	00000493          	li	s1,0
    800052d8:	00400793          	li	a5,4
    800052dc:	0297c863          	blt	a5,s1,8000530c <_Z4runsPFvPvEP6data_si+0x5c>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    800052e0:	00093783          	ld	a5,0(s2)
    800052e4:	faf43c23          	sd	a5,-72(s0)
    800052e8:	00893783          	ld	a5,8(s2)
    800052ec:	fcf43023          	sd	a5,-64(s0)
    800052f0:	01093783          	ld	a5,16(s2)
    800052f4:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    800052f8:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    800052fc:	fb840513          	addi	a0,s0,-72
    80005300:	000980e7          	jalr	s3
    for (int i = 0; i < RUN_NUM; i++) {
    80005304:	0014849b          	addiw	s1,s1,1
    80005308:	fd1ff06f          	j	800052d8 <_Z4runsPFvPvEP6data_si+0x28>
    }
}
    8000530c:	04813083          	ld	ra,72(sp)
    80005310:	04013403          	ld	s0,64(sp)
    80005314:	03813483          	ld	s1,56(sp)
    80005318:	03013903          	ld	s2,48(sp)
    8000531c:	02813983          	ld	s3,40(sp)
    80005320:	05010113          	addi	sp,sp,80
    80005324:	00008067          	ret

0000000080005328 <_Z7testOS2v>:

void testOS2()
{
    80005328:	fc010113          	addi	sp,sp,-64
    8000532c:	02113c23          	sd	ra,56(sp)
    80005330:	02813823          	sd	s0,48(sp)
    80005334:	02913423          	sd	s1,40(sp)
    80005338:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    8000533c:	00000693          	li	a3,0
    80005340:	00000617          	auipc	a2,0x0
    80005344:	cfc60613          	addi	a2,a2,-772 # 8000503c <_Z9constructPv>
    80005348:	00700593          	li	a1,7
    8000534c:	00003517          	auipc	a0,0x3
    80005350:	23450513          	addi	a0,a0,564 # 80008580 <CONSOLE_STATUS+0x570>
    80005354:	ffffd097          	auipc	ra,0xffffd
    80005358:	9c8080e7          	jalr	-1592(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    8000535c:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    80005360:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    80005364:	3e800793          	li	a5,1000
    80005368:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    8000536c:	00500613          	li	a2,5
    80005370:	fc840593          	addi	a1,s0,-56
    80005374:	00000517          	auipc	a0,0x0
    80005378:	d4050513          	addi	a0,a0,-704 # 800050b4 <_Z4workPv>
    8000537c:	00000097          	auipc	ra,0x0
    80005380:	f34080e7          	jalr	-204(ra) # 800052b0 <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    80005384:	00048513          	mv	a0,s1
    80005388:	ffffd097          	auipc	ra,0xffffd
    8000538c:	100080e7          	jalr	256(ra) # 80002488 <_Z18kmem_cache_destroyP12kmem_cache_s>
    80005390:	03813083          	ld	ra,56(sp)
    80005394:	03013403          	ld	s0,48(sp)
    80005398:	02813483          	ld	s1,40(sp)
    8000539c:	04010113          	addi	sp,sp,64
    800053a0:	00008067          	ret

00000000800053a4 <_ZN10KSemaphoreC1Ei>:
#include "../../h/KSemaphore.hpp"
#include "../../h/MemoryAllocator.hpp"
#include "../../h/Riscv.hpp"
#include "../../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    800053a4:	ff010113          	addi	sp,sp,-16
    800053a8:	00813423          	sd	s0,8(sp)
    800053ac:	01010413          	addi	s0,sp,16
{
    this->val = val;
    800053b0:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    800053b4:	00053423          	sd	zero,8(a0)
    800053b8:	00053023          	sd	zero,0(a0)
}
    800053bc:	00813403          	ld	s0,8(sp)
    800053c0:	01010113          	addi	sp,sp,16
    800053c4:	00008067          	ret

00000000800053c8 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    800053c8:	ff010113          	addi	sp,sp,-16
    800053cc:	00813423          	sd	s0,8(sp)
    800053d0:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800053d4:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    800053d8:	00053783          	ld	a5,0(a0)
    800053dc:	00078e63          	beqz	a5,800053f8 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800053e0:	00853783          	ld	a5,8(a0)
    800053e4:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800053e8:	00b53423          	sd	a1,8(a0)
    }
}
    800053ec:	00813403          	ld	s0,8(sp)
    800053f0:	01010113          	addi	sp,sp,16
    800053f4:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800053f8:	00b53423          	sd	a1,8(a0)
    800053fc:	00b53023          	sd	a1,0(a0)
    80005400:	fedff06f          	j	800053ec <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080005404 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80005404:	ff010113          	addi	sp,sp,-16
    80005408:	00113423          	sd	ra,8(sp)
    8000540c:	00813023          	sd	s0,0(sp)
    80005410:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80005414:	00003797          	auipc	a5,0x3
    80005418:	56c7b783          	ld	a5,1388(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    8000541c:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80005420:	00200793          	li	a5,2
    80005424:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80005428:	00000097          	auipc	ra,0x0
    8000542c:	fa0080e7          	jalr	-96(ra) # 800053c8 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80005430:	ffffd097          	auipc	ra,0xffffd
    80005434:	358080e7          	jalr	856(ra) # 80002788 <_ZN3PCB8dispatchEv>
}
    80005438:	00813083          	ld	ra,8(sp)
    8000543c:	00013403          	ld	s0,0(sp)
    80005440:	01010113          	addi	sp,sp,16
    80005444:	00008067          	ret

0000000080005448 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80005448:	00003797          	auipc	a5,0x3
    8000544c:	5387b783          	ld	a5,1336(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    80005450:	0007b783          	ld	a5,0(a5)
    80005454:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80005458:	01052783          	lw	a5,16(a0)
    8000545c:	fff7879b          	addiw	a5,a5,-1
    80005460:	00f52823          	sw	a5,16(a0)
    80005464:	02079713          	slli	a4,a5,0x20
    80005468:	00074663          	bltz	a4,80005474 <_ZN10KSemaphore4waitEv+0x2c>
}
    8000546c:	00000513          	li	a0,0
    80005470:	00008067          	ret
{
    80005474:	ff010113          	addi	sp,sp,-16
    80005478:	00113423          	sd	ra,8(sp)
    8000547c:	00813023          	sd	s0,0(sp)
    80005480:	01010413          	addi	s0,sp,16
        block();
    80005484:	00000097          	auipc	ra,0x0
    80005488:	f80080e7          	jalr	-128(ra) # 80005404 <_ZN10KSemaphore5blockEv>
}
    8000548c:	00000513          	li	a0,0
    80005490:	00813083          	ld	ra,8(sp)
    80005494:	00013403          	ld	s0,0(sp)
    80005498:	01010113          	addi	sp,sp,16
    8000549c:	00008067          	ret

00000000800054a0 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800054a0:	ff010113          	addi	sp,sp,-16
    800054a4:	00813423          	sd	s0,8(sp)
    800054a8:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    800054ac:	00053503          	ld	a0,0(a0)
    800054b0:	00813403          	ld	s0,8(sp)
    800054b4:	01010113          	addi	sp,sp,16
    800054b8:	00008067          	ret

00000000800054bc <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800054bc:	ff010113          	addi	sp,sp,-16
    800054c0:	00813423          	sd	s0,8(sp)
    800054c4:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    800054c8:	00053783          	ld	a5,0(a0)
    800054cc:	00078c63          	beqz	a5,800054e4 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800054d0:	0087b703          	ld	a4,8(a5)
    800054d4:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800054d8:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800054dc:	00053783          	ld	a5,0(a0)
    800054e0:	00078863          	beqz	a5,800054f0 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800054e4:	00813403          	ld	s0,8(sp)
    800054e8:	01010113          	addi	sp,sp,16
    800054ec:	00008067          	ret
        tailBlocked =0;
    800054f0:	00053423          	sd	zero,8(a0)
    800054f4:	ff1ff06f          	j	800054e4 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800054f8 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800054f8:	fe010113          	addi	sp,sp,-32
    800054fc:	00113c23          	sd	ra,24(sp)
    80005500:	00813823          	sd	s0,16(sp)
    80005504:	00913423          	sd	s1,8(sp)
    80005508:	01213023          	sd	s2,0(sp)
    8000550c:	02010413          	addi	s0,sp,32
    80005510:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80005514:	00090513          	mv	a0,s2
    80005518:	00000097          	auipc	ra,0x0
    8000551c:	f88080e7          	jalr	-120(ra) # 800054a0 <_ZN10KSemaphore15getFirstBlockedEv>
    80005520:	00050493          	mv	s1,a0
    80005524:	02050463          	beqz	a0,8000554c <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80005528:	00090513          	mv	a0,s2
    8000552c:	00000097          	auipc	ra,0x0
    80005530:	f90080e7          	jalr	-112(ra) # 800054bc <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80005534:	00100793          	li	a5,1
    80005538:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    8000553c:	00048513          	mv	a0,s1
    80005540:	ffffe097          	auipc	ra,0xffffe
    80005544:	5c4080e7          	jalr	1476(ra) # 80003b04 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80005548:	fcdff06f          	j	80005514 <_ZN10KSemaphoreD1Ev+0x1c>
}
    8000554c:	01813083          	ld	ra,24(sp)
    80005550:	01013403          	ld	s0,16(sp)
    80005554:	00813483          	ld	s1,8(sp)
    80005558:	00013903          	ld	s2,0(sp)
    8000555c:	02010113          	addi	sp,sp,32
    80005560:	00008067          	ret

0000000080005564 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80005564:	fe010113          	addi	sp,sp,-32
    80005568:	00113c23          	sd	ra,24(sp)
    8000556c:	00813823          	sd	s0,16(sp)
    80005570:	00913423          	sd	s1,8(sp)
    80005574:	01213023          	sd	s2,0(sp)
    80005578:	02010413          	addi	s0,sp,32
    8000557c:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80005580:	00000097          	auipc	ra,0x0
    80005584:	f20080e7          	jalr	-224(ra) # 800054a0 <_ZN10KSemaphore15getFirstBlockedEv>
    80005588:	00050493          	mv	s1,a0
    removeFirstBlocked();
    8000558c:	00090513          	mv	a0,s2
    80005590:	00000097          	auipc	ra,0x0
    80005594:	f2c080e7          	jalr	-212(ra) # 800054bc <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80005598:	00048863          	beqz	s1,800055a8 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    8000559c:	00048513          	mv	a0,s1
    800055a0:	ffffe097          	auipc	ra,0xffffe
    800055a4:	564080e7          	jalr	1380(ra) # 80003b04 <_ZN9Scheduler3putEP3PCB>
    }
}
    800055a8:	01813083          	ld	ra,24(sp)
    800055ac:	01013403          	ld	s0,16(sp)
    800055b0:	00813483          	ld	s1,8(sp)
    800055b4:	00013903          	ld	s2,0(sp)
    800055b8:	02010113          	addi	sp,sp,32
    800055bc:	00008067          	ret

00000000800055c0 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    800055c0:	01052783          	lw	a5,16(a0)
    800055c4:	0017879b          	addiw	a5,a5,1
    800055c8:	0007871b          	sext.w	a4,a5
    800055cc:	00f52823          	sw	a5,16(a0)
    800055d0:	00e05663          	blez	a4,800055dc <_ZN10KSemaphore6signalEv+0x1c>
}
    800055d4:	00000513          	li	a0,0
    800055d8:	00008067          	ret
uint64 KSemaphore::signal() {
    800055dc:	ff010113          	addi	sp,sp,-16
    800055e0:	00113423          	sd	ra,8(sp)
    800055e4:	00813023          	sd	s0,0(sp)
    800055e8:	01010413          	addi	s0,sp,16
        unblock();
    800055ec:	00000097          	auipc	ra,0x0
    800055f0:	f78080e7          	jalr	-136(ra) # 80005564 <_ZN10KSemaphore7unblockEv>
}
    800055f4:	00000513          	li	a0,0
    800055f8:	00813083          	ld	ra,8(sp)
    800055fc:	00013403          	ld	s0,0(sp)
    80005600:	01010113          	addi	sp,sp,16
    80005604:	00008067          	ret

0000000080005608 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80005608:	ff010113          	addi	sp,sp,-16
    8000560c:	00113423          	sd	ra,8(sp)
    80005610:	00813023          	sd	s0,0(sp)
    80005614:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    80005618:	00003797          	auipc	a5,0x3
    8000561c:	2f07b783          	ld	a5,752(a5) # 80008908 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005620:	0007b503          	ld	a0,0(a5)
    80005624:	ffffc097          	auipc	ra,0xffffc
    80005628:	5c0080e7          	jalr	1472(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    8000562c:	00813083          	ld	ra,8(sp)
    80005630:	00013403          	ld	s0,0(sp)
    80005634:	01010113          	addi	sp,sp,16
    80005638:	00008067          	ret

000000008000563c <_ZN10KSemaphore14semOpenHandlerEv>:
{
    8000563c:	fd010113          	addi	sp,sp,-48
    80005640:	02113423          	sd	ra,40(sp)
    80005644:	02813023          	sd	s0,32(sp)
    80005648:	00913c23          	sd	s1,24(sp)
    8000564c:	01213823          	sd	s2,16(sp)
    80005650:	01313423          	sd	s3,8(sp)
    80005654:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80005658:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    8000565c:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80005660:	01800513          	li	a0,24
    80005664:	00000097          	auipc	ra,0x0
    80005668:	fa4080e7          	jalr	-92(ra) # 80005608 <_ZN10KSemaphorenwEm>
    8000566c:	00050493          	mv	s1,a0
    80005670:	00050863          	beqz	a0,80005680 <_ZN10KSemaphore14semOpenHandlerEv+0x44>
    80005674:	0009859b          	sext.w	a1,s3
    80005678:	00000097          	auipc	ra,0x0
    8000567c:	d2c080e7          	jalr	-724(ra) # 800053a4 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80005680:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80005684:	02048663          	beqz	s1,800056b0 <_ZN10KSemaphore14semOpenHandlerEv+0x74>
            __asm__ volatile("li a0, 0");
    80005688:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000568c:	fffff097          	auipc	ra,0xfffff
    80005690:	ed4080e7          	jalr	-300(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005694:	02813083          	ld	ra,40(sp)
    80005698:	02013403          	ld	s0,32(sp)
    8000569c:	01813483          	ld	s1,24(sp)
    800056a0:	01013903          	ld	s2,16(sp)
    800056a4:	00813983          	ld	s3,8(sp)
    800056a8:	03010113          	addi	sp,sp,48
    800056ac:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800056b0:	fff00513          	li	a0,-1
    800056b4:	fd9ff06f          	j	8000568c <_ZN10KSemaphore14semOpenHandlerEv+0x50>

00000000800056b8 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    800056b8:	ff010113          	addi	sp,sp,-16
    800056bc:	00113423          	sd	ra,8(sp)
    800056c0:	00813023          	sd	s0,0(sp)
    800056c4:	01010413          	addi	s0,sp,16
    800056c8:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    800056cc:	00003797          	auipc	a5,0x3
    800056d0:	23c7b783          	ld	a5,572(a5) # 80008908 <_GLOBAL_OFFSET_TABLE_+0x20>
    800056d4:	0007b503          	ld	a0,0(a5)
    800056d8:	ffffc097          	auipc	ra,0xffffc
    800056dc:	74c080e7          	jalr	1868(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    800056e0:	00813083          	ld	ra,8(sp)
    800056e4:	00013403          	ld	s0,0(sp)
    800056e8:	01010113          	addi	sp,sp,16
    800056ec:	00008067          	ret

00000000800056f0 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    800056f0:	ff010113          	addi	sp,sp,-16
    800056f4:	00113423          	sd	ra,8(sp)
    800056f8:	00813023          	sd	s0,0(sp)
    800056fc:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005700:	00058513          	mv	a0,a1
    kSem->wait();
    80005704:	00000097          	auipc	ra,0x0
    80005708:	d44080e7          	jalr	-700(ra) # 80005448 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    8000570c:	00003797          	auipc	a5,0x3
    80005710:	2747b783          	ld	a5,628(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    80005714:	0007b783          	ld	a5,0(a5)
    80005718:	0587c783          	lbu	a5,88(a5)
    8000571c:	02078063          	beqz	a5,8000573c <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80005720:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80005724:	fffff097          	auipc	ra,0xfffff
    80005728:	e3c080e7          	jalr	-452(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000572c:	00813083          	ld	ra,8(sp)
    80005730:	00013403          	ld	s0,0(sp)
    80005734:	01010113          	addi	sp,sp,16
    80005738:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    8000573c:	00000513          	li	a0,0
    80005740:	fe5ff06f          	j	80005724 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080005744 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80005744:	ff010113          	addi	sp,sp,-16
    80005748:	00113423          	sd	ra,8(sp)
    8000574c:	00813023          	sd	s0,0(sp)
    80005750:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005754:	00058513          	mv	a0,a1
    if (kSem == 0)
    80005758:	02050463          	beqz	a0,80005780 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    8000575c:	00000097          	auipc	ra,0x0
    80005760:	e64080e7          	jalr	-412(ra) # 800055c0 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80005764:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80005768:	fffff097          	auipc	ra,0xfffff
    8000576c:	df8080e7          	jalr	-520(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005770:	00813083          	ld	ra,8(sp)
    80005774:	00013403          	ld	s0,0(sp)
    80005778:	01010113          	addi	sp,sp,16
    8000577c:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80005780:	00100513          	li	a0,1
    80005784:	fe5ff06f          	j	80005768 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080005788 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80005788:	fe010113          	addi	sp,sp,-32
    8000578c:	00113c23          	sd	ra,24(sp)
    80005790:	00813823          	sd	s0,16(sp)
    80005794:	00913423          	sd	s1,8(sp)
    80005798:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000579c:	00058493          	mv	s1,a1
    delete kSem;
    800057a0:	00048e63          	beqz	s1,800057bc <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800057a4:	00048513          	mv	a0,s1
    800057a8:	00000097          	auipc	ra,0x0
    800057ac:	d50080e7          	jalr	-688(ra) # 800054f8 <_ZN10KSemaphoreD1Ev>
    800057b0:	00048513          	mv	a0,s1
    800057b4:	00000097          	auipc	ra,0x0
    800057b8:	f04080e7          	jalr	-252(ra) # 800056b8 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800057bc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800057c0:	fffff097          	auipc	ra,0xfffff
    800057c4:	da0080e7          	jalr	-608(ra) # 80004560 <_ZN5Riscv13w_a0_sscratchEv>
}
    800057c8:	01813083          	ld	ra,24(sp)
    800057cc:	01013403          	ld	s0,16(sp)
    800057d0:	00813483          	ld	s1,8(sp)
    800057d4:	02010113          	addi	sp,sp,32
    800057d8:	00008067          	ret

00000000800057dc <start>:
    800057dc:	ff010113          	addi	sp,sp,-16
    800057e0:	00813423          	sd	s0,8(sp)
    800057e4:	01010413          	addi	s0,sp,16
    800057e8:	300027f3          	csrr	a5,mstatus
    800057ec:	ffffe737          	lui	a4,0xffffe
    800057f0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffef7ff>
    800057f4:	00e7f7b3          	and	a5,a5,a4
    800057f8:	00001737          	lui	a4,0x1
    800057fc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005800:	00e7e7b3          	or	a5,a5,a4
    80005804:	30079073          	csrw	mstatus,a5
    80005808:	00000797          	auipc	a5,0x0
    8000580c:	16078793          	addi	a5,a5,352 # 80005968 <system_main>
    80005810:	34179073          	csrw	mepc,a5
    80005814:	00000793          	li	a5,0
    80005818:	18079073          	csrw	satp,a5
    8000581c:	000107b7          	lui	a5,0x10
    80005820:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005824:	30279073          	csrw	medeleg,a5
    80005828:	30379073          	csrw	mideleg,a5
    8000582c:	104027f3          	csrr	a5,sie
    80005830:	2227e793          	ori	a5,a5,546
    80005834:	10479073          	csrw	sie,a5
    80005838:	fff00793          	li	a5,-1
    8000583c:	00a7d793          	srli	a5,a5,0xa
    80005840:	3b079073          	csrw	pmpaddr0,a5
    80005844:	00f00793          	li	a5,15
    80005848:	3a079073          	csrw	pmpcfg0,a5
    8000584c:	f14027f3          	csrr	a5,mhartid
    80005850:	0200c737          	lui	a4,0x200c
    80005854:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005858:	0007869b          	sext.w	a3,a5
    8000585c:	00269713          	slli	a4,a3,0x2
    80005860:	000f4637          	lui	a2,0xf4
    80005864:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005868:	00d70733          	add	a4,a4,a3
    8000586c:	0037979b          	slliw	a5,a5,0x3
    80005870:	020046b7          	lui	a3,0x2004
    80005874:	00d787b3          	add	a5,a5,a3
    80005878:	00c585b3          	add	a1,a1,a2
    8000587c:	00371693          	slli	a3,a4,0x3
    80005880:	00003717          	auipc	a4,0x3
    80005884:	27070713          	addi	a4,a4,624 # 80008af0 <timer_scratch>
    80005888:	00b7b023          	sd	a1,0(a5)
    8000588c:	00d70733          	add	a4,a4,a3
    80005890:	00f73c23          	sd	a5,24(a4)
    80005894:	02c73023          	sd	a2,32(a4)
    80005898:	34071073          	csrw	mscratch,a4
    8000589c:	00000797          	auipc	a5,0x0
    800058a0:	6e478793          	addi	a5,a5,1764 # 80005f80 <timervec>
    800058a4:	30579073          	csrw	mtvec,a5
    800058a8:	300027f3          	csrr	a5,mstatus
    800058ac:	0087e793          	ori	a5,a5,8
    800058b0:	30079073          	csrw	mstatus,a5
    800058b4:	304027f3          	csrr	a5,mie
    800058b8:	0807e793          	ori	a5,a5,128
    800058bc:	30479073          	csrw	mie,a5
    800058c0:	f14027f3          	csrr	a5,mhartid
    800058c4:	0007879b          	sext.w	a5,a5
    800058c8:	00078213          	mv	tp,a5
    800058cc:	30200073          	mret
    800058d0:	00813403          	ld	s0,8(sp)
    800058d4:	01010113          	addi	sp,sp,16
    800058d8:	00008067          	ret

00000000800058dc <timerinit>:
    800058dc:	ff010113          	addi	sp,sp,-16
    800058e0:	00813423          	sd	s0,8(sp)
    800058e4:	01010413          	addi	s0,sp,16
    800058e8:	f14027f3          	csrr	a5,mhartid
    800058ec:	0200c737          	lui	a4,0x200c
    800058f0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800058f4:	0007869b          	sext.w	a3,a5
    800058f8:	00269713          	slli	a4,a3,0x2
    800058fc:	000f4637          	lui	a2,0xf4
    80005900:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005904:	00d70733          	add	a4,a4,a3
    80005908:	0037979b          	slliw	a5,a5,0x3
    8000590c:	020046b7          	lui	a3,0x2004
    80005910:	00d787b3          	add	a5,a5,a3
    80005914:	00c585b3          	add	a1,a1,a2
    80005918:	00371693          	slli	a3,a4,0x3
    8000591c:	00003717          	auipc	a4,0x3
    80005920:	1d470713          	addi	a4,a4,468 # 80008af0 <timer_scratch>
    80005924:	00b7b023          	sd	a1,0(a5)
    80005928:	00d70733          	add	a4,a4,a3
    8000592c:	00f73c23          	sd	a5,24(a4)
    80005930:	02c73023          	sd	a2,32(a4)
    80005934:	34071073          	csrw	mscratch,a4
    80005938:	00000797          	auipc	a5,0x0
    8000593c:	64878793          	addi	a5,a5,1608 # 80005f80 <timervec>
    80005940:	30579073          	csrw	mtvec,a5
    80005944:	300027f3          	csrr	a5,mstatus
    80005948:	0087e793          	ori	a5,a5,8
    8000594c:	30079073          	csrw	mstatus,a5
    80005950:	304027f3          	csrr	a5,mie
    80005954:	0807e793          	ori	a5,a5,128
    80005958:	30479073          	csrw	mie,a5
    8000595c:	00813403          	ld	s0,8(sp)
    80005960:	01010113          	addi	sp,sp,16
    80005964:	00008067          	ret

0000000080005968 <system_main>:
    80005968:	fe010113          	addi	sp,sp,-32
    8000596c:	00813823          	sd	s0,16(sp)
    80005970:	00913423          	sd	s1,8(sp)
    80005974:	00113c23          	sd	ra,24(sp)
    80005978:	02010413          	addi	s0,sp,32
    8000597c:	00000097          	auipc	ra,0x0
    80005980:	0c4080e7          	jalr	196(ra) # 80005a40 <cpuid>
    80005984:	00003497          	auipc	s1,0x3
    80005988:	03c48493          	addi	s1,s1,60 # 800089c0 <started>
    8000598c:	02050263          	beqz	a0,800059b0 <system_main+0x48>
    80005990:	0004a783          	lw	a5,0(s1)
    80005994:	0007879b          	sext.w	a5,a5
    80005998:	fe078ce3          	beqz	a5,80005990 <system_main+0x28>
    8000599c:	0ff0000f          	fence
    800059a0:	00003517          	auipc	a0,0x3
    800059a4:	c4850513          	addi	a0,a0,-952 # 800085e8 <CONSOLE_STATUS+0x5d8>
    800059a8:	00001097          	auipc	ra,0x1
    800059ac:	a74080e7          	jalr	-1420(ra) # 8000641c <panic>
    800059b0:	00001097          	auipc	ra,0x1
    800059b4:	9c8080e7          	jalr	-1592(ra) # 80006378 <consoleinit>
    800059b8:	00001097          	auipc	ra,0x1
    800059bc:	154080e7          	jalr	340(ra) # 80006b0c <printfinit>
    800059c0:	00002517          	auipc	a0,0x2
    800059c4:	7e050513          	addi	a0,a0,2016 # 800081a0 <CONSOLE_STATUS+0x190>
    800059c8:	00001097          	auipc	ra,0x1
    800059cc:	ab0080e7          	jalr	-1360(ra) # 80006478 <__printf>
    800059d0:	00003517          	auipc	a0,0x3
    800059d4:	be850513          	addi	a0,a0,-1048 # 800085b8 <CONSOLE_STATUS+0x5a8>
    800059d8:	00001097          	auipc	ra,0x1
    800059dc:	aa0080e7          	jalr	-1376(ra) # 80006478 <__printf>
    800059e0:	00002517          	auipc	a0,0x2
    800059e4:	7c050513          	addi	a0,a0,1984 # 800081a0 <CONSOLE_STATUS+0x190>
    800059e8:	00001097          	auipc	ra,0x1
    800059ec:	a90080e7          	jalr	-1392(ra) # 80006478 <__printf>
    800059f0:	00001097          	auipc	ra,0x1
    800059f4:	4a8080e7          	jalr	1192(ra) # 80006e98 <kinit>
    800059f8:	00000097          	auipc	ra,0x0
    800059fc:	148080e7          	jalr	328(ra) # 80005b40 <trapinit>
    80005a00:	00000097          	auipc	ra,0x0
    80005a04:	16c080e7          	jalr	364(ra) # 80005b6c <trapinithart>
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	5b8080e7          	jalr	1464(ra) # 80005fc0 <plicinit>
    80005a10:	00000097          	auipc	ra,0x0
    80005a14:	5d8080e7          	jalr	1496(ra) # 80005fe8 <plicinithart>
    80005a18:	00000097          	auipc	ra,0x0
    80005a1c:	078080e7          	jalr	120(ra) # 80005a90 <userinit>
    80005a20:	0ff0000f          	fence
    80005a24:	00100793          	li	a5,1
    80005a28:	00003517          	auipc	a0,0x3
    80005a2c:	ba850513          	addi	a0,a0,-1112 # 800085d0 <CONSOLE_STATUS+0x5c0>
    80005a30:	00f4a023          	sw	a5,0(s1)
    80005a34:	00001097          	auipc	ra,0x1
    80005a38:	a44080e7          	jalr	-1468(ra) # 80006478 <__printf>
    80005a3c:	0000006f          	j	80005a3c <system_main+0xd4>

0000000080005a40 <cpuid>:
    80005a40:	ff010113          	addi	sp,sp,-16
    80005a44:	00813423          	sd	s0,8(sp)
    80005a48:	01010413          	addi	s0,sp,16
    80005a4c:	00020513          	mv	a0,tp
    80005a50:	00813403          	ld	s0,8(sp)
    80005a54:	0005051b          	sext.w	a0,a0
    80005a58:	01010113          	addi	sp,sp,16
    80005a5c:	00008067          	ret

0000000080005a60 <mycpu>:
    80005a60:	ff010113          	addi	sp,sp,-16
    80005a64:	00813423          	sd	s0,8(sp)
    80005a68:	01010413          	addi	s0,sp,16
    80005a6c:	00020793          	mv	a5,tp
    80005a70:	00813403          	ld	s0,8(sp)
    80005a74:	0007879b          	sext.w	a5,a5
    80005a78:	00779793          	slli	a5,a5,0x7
    80005a7c:	00004517          	auipc	a0,0x4
    80005a80:	0a450513          	addi	a0,a0,164 # 80009b20 <cpus>
    80005a84:	00f50533          	add	a0,a0,a5
    80005a88:	01010113          	addi	sp,sp,16
    80005a8c:	00008067          	ret

0000000080005a90 <userinit>:
    80005a90:	ff010113          	addi	sp,sp,-16
    80005a94:	00813423          	sd	s0,8(sp)
    80005a98:	01010413          	addi	s0,sp,16
    80005a9c:	00813403          	ld	s0,8(sp)
    80005aa0:	01010113          	addi	sp,sp,16
    80005aa4:	ffffe317          	auipc	t1,0xffffe
    80005aa8:	16030067          	jr	352(t1) # 80003c04 <main>

0000000080005aac <either_copyout>:
    80005aac:	ff010113          	addi	sp,sp,-16
    80005ab0:	00813023          	sd	s0,0(sp)
    80005ab4:	00113423          	sd	ra,8(sp)
    80005ab8:	01010413          	addi	s0,sp,16
    80005abc:	02051663          	bnez	a0,80005ae8 <either_copyout+0x3c>
    80005ac0:	00058513          	mv	a0,a1
    80005ac4:	00060593          	mv	a1,a2
    80005ac8:	0006861b          	sext.w	a2,a3
    80005acc:	00002097          	auipc	ra,0x2
    80005ad0:	c58080e7          	jalr	-936(ra) # 80007724 <__memmove>
    80005ad4:	00813083          	ld	ra,8(sp)
    80005ad8:	00013403          	ld	s0,0(sp)
    80005adc:	00000513          	li	a0,0
    80005ae0:	01010113          	addi	sp,sp,16
    80005ae4:	00008067          	ret
    80005ae8:	00003517          	auipc	a0,0x3
    80005aec:	b2850513          	addi	a0,a0,-1240 # 80008610 <CONSOLE_STATUS+0x600>
    80005af0:	00001097          	auipc	ra,0x1
    80005af4:	92c080e7          	jalr	-1748(ra) # 8000641c <panic>

0000000080005af8 <either_copyin>:
    80005af8:	ff010113          	addi	sp,sp,-16
    80005afc:	00813023          	sd	s0,0(sp)
    80005b00:	00113423          	sd	ra,8(sp)
    80005b04:	01010413          	addi	s0,sp,16
    80005b08:	02059463          	bnez	a1,80005b30 <either_copyin+0x38>
    80005b0c:	00060593          	mv	a1,a2
    80005b10:	0006861b          	sext.w	a2,a3
    80005b14:	00002097          	auipc	ra,0x2
    80005b18:	c10080e7          	jalr	-1008(ra) # 80007724 <__memmove>
    80005b1c:	00813083          	ld	ra,8(sp)
    80005b20:	00013403          	ld	s0,0(sp)
    80005b24:	00000513          	li	a0,0
    80005b28:	01010113          	addi	sp,sp,16
    80005b2c:	00008067          	ret
    80005b30:	00003517          	auipc	a0,0x3
    80005b34:	b0850513          	addi	a0,a0,-1272 # 80008638 <CONSOLE_STATUS+0x628>
    80005b38:	00001097          	auipc	ra,0x1
    80005b3c:	8e4080e7          	jalr	-1820(ra) # 8000641c <panic>

0000000080005b40 <trapinit>:
    80005b40:	ff010113          	addi	sp,sp,-16
    80005b44:	00813423          	sd	s0,8(sp)
    80005b48:	01010413          	addi	s0,sp,16
    80005b4c:	00813403          	ld	s0,8(sp)
    80005b50:	00003597          	auipc	a1,0x3
    80005b54:	b1058593          	addi	a1,a1,-1264 # 80008660 <CONSOLE_STATUS+0x650>
    80005b58:	00004517          	auipc	a0,0x4
    80005b5c:	04850513          	addi	a0,a0,72 # 80009ba0 <tickslock>
    80005b60:	01010113          	addi	sp,sp,16
    80005b64:	00001317          	auipc	t1,0x1
    80005b68:	5c430067          	jr	1476(t1) # 80007128 <initlock>

0000000080005b6c <trapinithart>:
    80005b6c:	ff010113          	addi	sp,sp,-16
    80005b70:	00813423          	sd	s0,8(sp)
    80005b74:	01010413          	addi	s0,sp,16
    80005b78:	00000797          	auipc	a5,0x0
    80005b7c:	2f878793          	addi	a5,a5,760 # 80005e70 <kernelvec>
    80005b80:	10579073          	csrw	stvec,a5
    80005b84:	00813403          	ld	s0,8(sp)
    80005b88:	01010113          	addi	sp,sp,16
    80005b8c:	00008067          	ret

0000000080005b90 <usertrap>:
    80005b90:	ff010113          	addi	sp,sp,-16
    80005b94:	00813423          	sd	s0,8(sp)
    80005b98:	01010413          	addi	s0,sp,16
    80005b9c:	00813403          	ld	s0,8(sp)
    80005ba0:	01010113          	addi	sp,sp,16
    80005ba4:	00008067          	ret

0000000080005ba8 <usertrapret>:
    80005ba8:	ff010113          	addi	sp,sp,-16
    80005bac:	00813423          	sd	s0,8(sp)
    80005bb0:	01010413          	addi	s0,sp,16
    80005bb4:	00813403          	ld	s0,8(sp)
    80005bb8:	01010113          	addi	sp,sp,16
    80005bbc:	00008067          	ret

0000000080005bc0 <kerneltrap>:
    80005bc0:	fe010113          	addi	sp,sp,-32
    80005bc4:	00813823          	sd	s0,16(sp)
    80005bc8:	00113c23          	sd	ra,24(sp)
    80005bcc:	00913423          	sd	s1,8(sp)
    80005bd0:	02010413          	addi	s0,sp,32
    80005bd4:	142025f3          	csrr	a1,scause
    80005bd8:	100027f3          	csrr	a5,sstatus
    80005bdc:	0027f793          	andi	a5,a5,2
    80005be0:	10079c63          	bnez	a5,80005cf8 <kerneltrap+0x138>
    80005be4:	142027f3          	csrr	a5,scause
    80005be8:	0207ce63          	bltz	a5,80005c24 <kerneltrap+0x64>
    80005bec:	00003517          	auipc	a0,0x3
    80005bf0:	abc50513          	addi	a0,a0,-1348 # 800086a8 <CONSOLE_STATUS+0x698>
    80005bf4:	00001097          	auipc	ra,0x1
    80005bf8:	884080e7          	jalr	-1916(ra) # 80006478 <__printf>
    80005bfc:	141025f3          	csrr	a1,sepc
    80005c00:	14302673          	csrr	a2,stval
    80005c04:	00003517          	auipc	a0,0x3
    80005c08:	ab450513          	addi	a0,a0,-1356 # 800086b8 <CONSOLE_STATUS+0x6a8>
    80005c0c:	00001097          	auipc	ra,0x1
    80005c10:	86c080e7          	jalr	-1940(ra) # 80006478 <__printf>
    80005c14:	00003517          	auipc	a0,0x3
    80005c18:	abc50513          	addi	a0,a0,-1348 # 800086d0 <CONSOLE_STATUS+0x6c0>
    80005c1c:	00001097          	auipc	ra,0x1
    80005c20:	800080e7          	jalr	-2048(ra) # 8000641c <panic>
    80005c24:	0ff7f713          	andi	a4,a5,255
    80005c28:	00900693          	li	a3,9
    80005c2c:	04d70063          	beq	a4,a3,80005c6c <kerneltrap+0xac>
    80005c30:	fff00713          	li	a4,-1
    80005c34:	03f71713          	slli	a4,a4,0x3f
    80005c38:	00170713          	addi	a4,a4,1
    80005c3c:	fae798e3          	bne	a5,a4,80005bec <kerneltrap+0x2c>
    80005c40:	00000097          	auipc	ra,0x0
    80005c44:	e00080e7          	jalr	-512(ra) # 80005a40 <cpuid>
    80005c48:	06050663          	beqz	a0,80005cb4 <kerneltrap+0xf4>
    80005c4c:	144027f3          	csrr	a5,sip
    80005c50:	ffd7f793          	andi	a5,a5,-3
    80005c54:	14479073          	csrw	sip,a5
    80005c58:	01813083          	ld	ra,24(sp)
    80005c5c:	01013403          	ld	s0,16(sp)
    80005c60:	00813483          	ld	s1,8(sp)
    80005c64:	02010113          	addi	sp,sp,32
    80005c68:	00008067          	ret
    80005c6c:	00000097          	auipc	ra,0x0
    80005c70:	3c8080e7          	jalr	968(ra) # 80006034 <plic_claim>
    80005c74:	00a00793          	li	a5,10
    80005c78:	00050493          	mv	s1,a0
    80005c7c:	06f50863          	beq	a0,a5,80005cec <kerneltrap+0x12c>
    80005c80:	fc050ce3          	beqz	a0,80005c58 <kerneltrap+0x98>
    80005c84:	00050593          	mv	a1,a0
    80005c88:	00003517          	auipc	a0,0x3
    80005c8c:	a0050513          	addi	a0,a0,-1536 # 80008688 <CONSOLE_STATUS+0x678>
    80005c90:	00000097          	auipc	ra,0x0
    80005c94:	7e8080e7          	jalr	2024(ra) # 80006478 <__printf>
    80005c98:	01013403          	ld	s0,16(sp)
    80005c9c:	01813083          	ld	ra,24(sp)
    80005ca0:	00048513          	mv	a0,s1
    80005ca4:	00813483          	ld	s1,8(sp)
    80005ca8:	02010113          	addi	sp,sp,32
    80005cac:	00000317          	auipc	t1,0x0
    80005cb0:	3c030067          	jr	960(t1) # 8000606c <plic_complete>
    80005cb4:	00004517          	auipc	a0,0x4
    80005cb8:	eec50513          	addi	a0,a0,-276 # 80009ba0 <tickslock>
    80005cbc:	00001097          	auipc	ra,0x1
    80005cc0:	490080e7          	jalr	1168(ra) # 8000714c <acquire>
    80005cc4:	00003717          	auipc	a4,0x3
    80005cc8:	d0070713          	addi	a4,a4,-768 # 800089c4 <ticks>
    80005ccc:	00072783          	lw	a5,0(a4)
    80005cd0:	00004517          	auipc	a0,0x4
    80005cd4:	ed050513          	addi	a0,a0,-304 # 80009ba0 <tickslock>
    80005cd8:	0017879b          	addiw	a5,a5,1
    80005cdc:	00f72023          	sw	a5,0(a4)
    80005ce0:	00001097          	auipc	ra,0x1
    80005ce4:	538080e7          	jalr	1336(ra) # 80007218 <release>
    80005ce8:	f65ff06f          	j	80005c4c <kerneltrap+0x8c>
    80005cec:	00001097          	auipc	ra,0x1
    80005cf0:	094080e7          	jalr	148(ra) # 80006d80 <uartintr>
    80005cf4:	fa5ff06f          	j	80005c98 <kerneltrap+0xd8>
    80005cf8:	00003517          	auipc	a0,0x3
    80005cfc:	97050513          	addi	a0,a0,-1680 # 80008668 <CONSOLE_STATUS+0x658>
    80005d00:	00000097          	auipc	ra,0x0
    80005d04:	71c080e7          	jalr	1820(ra) # 8000641c <panic>

0000000080005d08 <clockintr>:
    80005d08:	fe010113          	addi	sp,sp,-32
    80005d0c:	00813823          	sd	s0,16(sp)
    80005d10:	00913423          	sd	s1,8(sp)
    80005d14:	00113c23          	sd	ra,24(sp)
    80005d18:	02010413          	addi	s0,sp,32
    80005d1c:	00004497          	auipc	s1,0x4
    80005d20:	e8448493          	addi	s1,s1,-380 # 80009ba0 <tickslock>
    80005d24:	00048513          	mv	a0,s1
    80005d28:	00001097          	auipc	ra,0x1
    80005d2c:	424080e7          	jalr	1060(ra) # 8000714c <acquire>
    80005d30:	00003717          	auipc	a4,0x3
    80005d34:	c9470713          	addi	a4,a4,-876 # 800089c4 <ticks>
    80005d38:	00072783          	lw	a5,0(a4)
    80005d3c:	01013403          	ld	s0,16(sp)
    80005d40:	01813083          	ld	ra,24(sp)
    80005d44:	00048513          	mv	a0,s1
    80005d48:	0017879b          	addiw	a5,a5,1
    80005d4c:	00813483          	ld	s1,8(sp)
    80005d50:	00f72023          	sw	a5,0(a4)
    80005d54:	02010113          	addi	sp,sp,32
    80005d58:	00001317          	auipc	t1,0x1
    80005d5c:	4c030067          	jr	1216(t1) # 80007218 <release>

0000000080005d60 <devintr>:
    80005d60:	142027f3          	csrr	a5,scause
    80005d64:	00000513          	li	a0,0
    80005d68:	0007c463          	bltz	a5,80005d70 <devintr+0x10>
    80005d6c:	00008067          	ret
    80005d70:	fe010113          	addi	sp,sp,-32
    80005d74:	00813823          	sd	s0,16(sp)
    80005d78:	00113c23          	sd	ra,24(sp)
    80005d7c:	00913423          	sd	s1,8(sp)
    80005d80:	02010413          	addi	s0,sp,32
    80005d84:	0ff7f713          	andi	a4,a5,255
    80005d88:	00900693          	li	a3,9
    80005d8c:	04d70c63          	beq	a4,a3,80005de4 <devintr+0x84>
    80005d90:	fff00713          	li	a4,-1
    80005d94:	03f71713          	slli	a4,a4,0x3f
    80005d98:	00170713          	addi	a4,a4,1
    80005d9c:	00e78c63          	beq	a5,a4,80005db4 <devintr+0x54>
    80005da0:	01813083          	ld	ra,24(sp)
    80005da4:	01013403          	ld	s0,16(sp)
    80005da8:	00813483          	ld	s1,8(sp)
    80005dac:	02010113          	addi	sp,sp,32
    80005db0:	00008067          	ret
    80005db4:	00000097          	auipc	ra,0x0
    80005db8:	c8c080e7          	jalr	-884(ra) # 80005a40 <cpuid>
    80005dbc:	06050663          	beqz	a0,80005e28 <devintr+0xc8>
    80005dc0:	144027f3          	csrr	a5,sip
    80005dc4:	ffd7f793          	andi	a5,a5,-3
    80005dc8:	14479073          	csrw	sip,a5
    80005dcc:	01813083          	ld	ra,24(sp)
    80005dd0:	01013403          	ld	s0,16(sp)
    80005dd4:	00813483          	ld	s1,8(sp)
    80005dd8:	00200513          	li	a0,2
    80005ddc:	02010113          	addi	sp,sp,32
    80005de0:	00008067          	ret
    80005de4:	00000097          	auipc	ra,0x0
    80005de8:	250080e7          	jalr	592(ra) # 80006034 <plic_claim>
    80005dec:	00a00793          	li	a5,10
    80005df0:	00050493          	mv	s1,a0
    80005df4:	06f50663          	beq	a0,a5,80005e60 <devintr+0x100>
    80005df8:	00100513          	li	a0,1
    80005dfc:	fa0482e3          	beqz	s1,80005da0 <devintr+0x40>
    80005e00:	00048593          	mv	a1,s1
    80005e04:	00003517          	auipc	a0,0x3
    80005e08:	88450513          	addi	a0,a0,-1916 # 80008688 <CONSOLE_STATUS+0x678>
    80005e0c:	00000097          	auipc	ra,0x0
    80005e10:	66c080e7          	jalr	1644(ra) # 80006478 <__printf>
    80005e14:	00048513          	mv	a0,s1
    80005e18:	00000097          	auipc	ra,0x0
    80005e1c:	254080e7          	jalr	596(ra) # 8000606c <plic_complete>
    80005e20:	00100513          	li	a0,1
    80005e24:	f7dff06f          	j	80005da0 <devintr+0x40>
    80005e28:	00004517          	auipc	a0,0x4
    80005e2c:	d7850513          	addi	a0,a0,-648 # 80009ba0 <tickslock>
    80005e30:	00001097          	auipc	ra,0x1
    80005e34:	31c080e7          	jalr	796(ra) # 8000714c <acquire>
    80005e38:	00003717          	auipc	a4,0x3
    80005e3c:	b8c70713          	addi	a4,a4,-1140 # 800089c4 <ticks>
    80005e40:	00072783          	lw	a5,0(a4)
    80005e44:	00004517          	auipc	a0,0x4
    80005e48:	d5c50513          	addi	a0,a0,-676 # 80009ba0 <tickslock>
    80005e4c:	0017879b          	addiw	a5,a5,1
    80005e50:	00f72023          	sw	a5,0(a4)
    80005e54:	00001097          	auipc	ra,0x1
    80005e58:	3c4080e7          	jalr	964(ra) # 80007218 <release>
    80005e5c:	f65ff06f          	j	80005dc0 <devintr+0x60>
    80005e60:	00001097          	auipc	ra,0x1
    80005e64:	f20080e7          	jalr	-224(ra) # 80006d80 <uartintr>
    80005e68:	fadff06f          	j	80005e14 <devintr+0xb4>
    80005e6c:	0000                	unimp
	...

0000000080005e70 <kernelvec>:
    80005e70:	f0010113          	addi	sp,sp,-256
    80005e74:	00113023          	sd	ra,0(sp)
    80005e78:	00213423          	sd	sp,8(sp)
    80005e7c:	00313823          	sd	gp,16(sp)
    80005e80:	00413c23          	sd	tp,24(sp)
    80005e84:	02513023          	sd	t0,32(sp)
    80005e88:	02613423          	sd	t1,40(sp)
    80005e8c:	02713823          	sd	t2,48(sp)
    80005e90:	02813c23          	sd	s0,56(sp)
    80005e94:	04913023          	sd	s1,64(sp)
    80005e98:	04a13423          	sd	a0,72(sp)
    80005e9c:	04b13823          	sd	a1,80(sp)
    80005ea0:	04c13c23          	sd	a2,88(sp)
    80005ea4:	06d13023          	sd	a3,96(sp)
    80005ea8:	06e13423          	sd	a4,104(sp)
    80005eac:	06f13823          	sd	a5,112(sp)
    80005eb0:	07013c23          	sd	a6,120(sp)
    80005eb4:	09113023          	sd	a7,128(sp)
    80005eb8:	09213423          	sd	s2,136(sp)
    80005ebc:	09313823          	sd	s3,144(sp)
    80005ec0:	09413c23          	sd	s4,152(sp)
    80005ec4:	0b513023          	sd	s5,160(sp)
    80005ec8:	0b613423          	sd	s6,168(sp)
    80005ecc:	0b713823          	sd	s7,176(sp)
    80005ed0:	0b813c23          	sd	s8,184(sp)
    80005ed4:	0d913023          	sd	s9,192(sp)
    80005ed8:	0da13423          	sd	s10,200(sp)
    80005edc:	0db13823          	sd	s11,208(sp)
    80005ee0:	0dc13c23          	sd	t3,216(sp)
    80005ee4:	0fd13023          	sd	t4,224(sp)
    80005ee8:	0fe13423          	sd	t5,232(sp)
    80005eec:	0ff13823          	sd	t6,240(sp)
    80005ef0:	cd1ff0ef          	jal	ra,80005bc0 <kerneltrap>
    80005ef4:	00013083          	ld	ra,0(sp)
    80005ef8:	00813103          	ld	sp,8(sp)
    80005efc:	01013183          	ld	gp,16(sp)
    80005f00:	02013283          	ld	t0,32(sp)
    80005f04:	02813303          	ld	t1,40(sp)
    80005f08:	03013383          	ld	t2,48(sp)
    80005f0c:	03813403          	ld	s0,56(sp)
    80005f10:	04013483          	ld	s1,64(sp)
    80005f14:	04813503          	ld	a0,72(sp)
    80005f18:	05013583          	ld	a1,80(sp)
    80005f1c:	05813603          	ld	a2,88(sp)
    80005f20:	06013683          	ld	a3,96(sp)
    80005f24:	06813703          	ld	a4,104(sp)
    80005f28:	07013783          	ld	a5,112(sp)
    80005f2c:	07813803          	ld	a6,120(sp)
    80005f30:	08013883          	ld	a7,128(sp)
    80005f34:	08813903          	ld	s2,136(sp)
    80005f38:	09013983          	ld	s3,144(sp)
    80005f3c:	09813a03          	ld	s4,152(sp)
    80005f40:	0a013a83          	ld	s5,160(sp)
    80005f44:	0a813b03          	ld	s6,168(sp)
    80005f48:	0b013b83          	ld	s7,176(sp)
    80005f4c:	0b813c03          	ld	s8,184(sp)
    80005f50:	0c013c83          	ld	s9,192(sp)
    80005f54:	0c813d03          	ld	s10,200(sp)
    80005f58:	0d013d83          	ld	s11,208(sp)
    80005f5c:	0d813e03          	ld	t3,216(sp)
    80005f60:	0e013e83          	ld	t4,224(sp)
    80005f64:	0e813f03          	ld	t5,232(sp)
    80005f68:	0f013f83          	ld	t6,240(sp)
    80005f6c:	10010113          	addi	sp,sp,256
    80005f70:	10200073          	sret
    80005f74:	00000013          	nop
    80005f78:	00000013          	nop
    80005f7c:	00000013          	nop

0000000080005f80 <timervec>:
    80005f80:	34051573          	csrrw	a0,mscratch,a0
    80005f84:	00b53023          	sd	a1,0(a0)
    80005f88:	00c53423          	sd	a2,8(a0)
    80005f8c:	00d53823          	sd	a3,16(a0)
    80005f90:	01853583          	ld	a1,24(a0)
    80005f94:	02053603          	ld	a2,32(a0)
    80005f98:	0005b683          	ld	a3,0(a1)
    80005f9c:	00c686b3          	add	a3,a3,a2
    80005fa0:	00d5b023          	sd	a3,0(a1)
    80005fa4:	00200593          	li	a1,2
    80005fa8:	14459073          	csrw	sip,a1
    80005fac:	01053683          	ld	a3,16(a0)
    80005fb0:	00853603          	ld	a2,8(a0)
    80005fb4:	00053583          	ld	a1,0(a0)
    80005fb8:	34051573          	csrrw	a0,mscratch,a0
    80005fbc:	30200073          	mret

0000000080005fc0 <plicinit>:
    80005fc0:	ff010113          	addi	sp,sp,-16
    80005fc4:	00813423          	sd	s0,8(sp)
    80005fc8:	01010413          	addi	s0,sp,16
    80005fcc:	00813403          	ld	s0,8(sp)
    80005fd0:	0c0007b7          	lui	a5,0xc000
    80005fd4:	00100713          	li	a4,1
    80005fd8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005fdc:	00e7a223          	sw	a4,4(a5)
    80005fe0:	01010113          	addi	sp,sp,16
    80005fe4:	00008067          	ret

0000000080005fe8 <plicinithart>:
    80005fe8:	ff010113          	addi	sp,sp,-16
    80005fec:	00813023          	sd	s0,0(sp)
    80005ff0:	00113423          	sd	ra,8(sp)
    80005ff4:	01010413          	addi	s0,sp,16
    80005ff8:	00000097          	auipc	ra,0x0
    80005ffc:	a48080e7          	jalr	-1464(ra) # 80005a40 <cpuid>
    80006000:	0085171b          	slliw	a4,a0,0x8
    80006004:	0c0027b7          	lui	a5,0xc002
    80006008:	00e787b3          	add	a5,a5,a4
    8000600c:	40200713          	li	a4,1026
    80006010:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006014:	00813083          	ld	ra,8(sp)
    80006018:	00013403          	ld	s0,0(sp)
    8000601c:	00d5151b          	slliw	a0,a0,0xd
    80006020:	0c2017b7          	lui	a5,0xc201
    80006024:	00a78533          	add	a0,a5,a0
    80006028:	00052023          	sw	zero,0(a0)
    8000602c:	01010113          	addi	sp,sp,16
    80006030:	00008067          	ret

0000000080006034 <plic_claim>:
    80006034:	ff010113          	addi	sp,sp,-16
    80006038:	00813023          	sd	s0,0(sp)
    8000603c:	00113423          	sd	ra,8(sp)
    80006040:	01010413          	addi	s0,sp,16
    80006044:	00000097          	auipc	ra,0x0
    80006048:	9fc080e7          	jalr	-1540(ra) # 80005a40 <cpuid>
    8000604c:	00813083          	ld	ra,8(sp)
    80006050:	00013403          	ld	s0,0(sp)
    80006054:	00d5151b          	slliw	a0,a0,0xd
    80006058:	0c2017b7          	lui	a5,0xc201
    8000605c:	00a78533          	add	a0,a5,a0
    80006060:	00452503          	lw	a0,4(a0)
    80006064:	01010113          	addi	sp,sp,16
    80006068:	00008067          	ret

000000008000606c <plic_complete>:
    8000606c:	fe010113          	addi	sp,sp,-32
    80006070:	00813823          	sd	s0,16(sp)
    80006074:	00913423          	sd	s1,8(sp)
    80006078:	00113c23          	sd	ra,24(sp)
    8000607c:	02010413          	addi	s0,sp,32
    80006080:	00050493          	mv	s1,a0
    80006084:	00000097          	auipc	ra,0x0
    80006088:	9bc080e7          	jalr	-1604(ra) # 80005a40 <cpuid>
    8000608c:	01813083          	ld	ra,24(sp)
    80006090:	01013403          	ld	s0,16(sp)
    80006094:	00d5179b          	slliw	a5,a0,0xd
    80006098:	0c201737          	lui	a4,0xc201
    8000609c:	00f707b3          	add	a5,a4,a5
    800060a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800060a4:	00813483          	ld	s1,8(sp)
    800060a8:	02010113          	addi	sp,sp,32
    800060ac:	00008067          	ret

00000000800060b0 <consolewrite>:
    800060b0:	fb010113          	addi	sp,sp,-80
    800060b4:	04813023          	sd	s0,64(sp)
    800060b8:	04113423          	sd	ra,72(sp)
    800060bc:	02913c23          	sd	s1,56(sp)
    800060c0:	03213823          	sd	s2,48(sp)
    800060c4:	03313423          	sd	s3,40(sp)
    800060c8:	03413023          	sd	s4,32(sp)
    800060cc:	01513c23          	sd	s5,24(sp)
    800060d0:	05010413          	addi	s0,sp,80
    800060d4:	06c05c63          	blez	a2,8000614c <consolewrite+0x9c>
    800060d8:	00060993          	mv	s3,a2
    800060dc:	00050a13          	mv	s4,a0
    800060e0:	00058493          	mv	s1,a1
    800060e4:	00000913          	li	s2,0
    800060e8:	fff00a93          	li	s5,-1
    800060ec:	01c0006f          	j	80006108 <consolewrite+0x58>
    800060f0:	fbf44503          	lbu	a0,-65(s0)
    800060f4:	0019091b          	addiw	s2,s2,1
    800060f8:	00148493          	addi	s1,s1,1
    800060fc:	00001097          	auipc	ra,0x1
    80006100:	a9c080e7          	jalr	-1380(ra) # 80006b98 <uartputc>
    80006104:	03298063          	beq	s3,s2,80006124 <consolewrite+0x74>
    80006108:	00048613          	mv	a2,s1
    8000610c:	00100693          	li	a3,1
    80006110:	000a0593          	mv	a1,s4
    80006114:	fbf40513          	addi	a0,s0,-65
    80006118:	00000097          	auipc	ra,0x0
    8000611c:	9e0080e7          	jalr	-1568(ra) # 80005af8 <either_copyin>
    80006120:	fd5518e3          	bne	a0,s5,800060f0 <consolewrite+0x40>
    80006124:	04813083          	ld	ra,72(sp)
    80006128:	04013403          	ld	s0,64(sp)
    8000612c:	03813483          	ld	s1,56(sp)
    80006130:	02813983          	ld	s3,40(sp)
    80006134:	02013a03          	ld	s4,32(sp)
    80006138:	01813a83          	ld	s5,24(sp)
    8000613c:	00090513          	mv	a0,s2
    80006140:	03013903          	ld	s2,48(sp)
    80006144:	05010113          	addi	sp,sp,80
    80006148:	00008067          	ret
    8000614c:	00000913          	li	s2,0
    80006150:	fd5ff06f          	j	80006124 <consolewrite+0x74>

0000000080006154 <consoleread>:
    80006154:	f9010113          	addi	sp,sp,-112
    80006158:	06813023          	sd	s0,96(sp)
    8000615c:	04913c23          	sd	s1,88(sp)
    80006160:	05213823          	sd	s2,80(sp)
    80006164:	05313423          	sd	s3,72(sp)
    80006168:	05413023          	sd	s4,64(sp)
    8000616c:	03513c23          	sd	s5,56(sp)
    80006170:	03613823          	sd	s6,48(sp)
    80006174:	03713423          	sd	s7,40(sp)
    80006178:	03813023          	sd	s8,32(sp)
    8000617c:	06113423          	sd	ra,104(sp)
    80006180:	01913c23          	sd	s9,24(sp)
    80006184:	07010413          	addi	s0,sp,112
    80006188:	00060b93          	mv	s7,a2
    8000618c:	00050913          	mv	s2,a0
    80006190:	00058c13          	mv	s8,a1
    80006194:	00060b1b          	sext.w	s6,a2
    80006198:	00004497          	auipc	s1,0x4
    8000619c:	a3048493          	addi	s1,s1,-1488 # 80009bc8 <cons>
    800061a0:	00400993          	li	s3,4
    800061a4:	fff00a13          	li	s4,-1
    800061a8:	00a00a93          	li	s5,10
    800061ac:	05705e63          	blez	s7,80006208 <consoleread+0xb4>
    800061b0:	09c4a703          	lw	a4,156(s1)
    800061b4:	0984a783          	lw	a5,152(s1)
    800061b8:	0007071b          	sext.w	a4,a4
    800061bc:	08e78463          	beq	a5,a4,80006244 <consoleread+0xf0>
    800061c0:	07f7f713          	andi	a4,a5,127
    800061c4:	00e48733          	add	a4,s1,a4
    800061c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800061cc:	0017869b          	addiw	a3,a5,1
    800061d0:	08d4ac23          	sw	a3,152(s1)
    800061d4:	00070c9b          	sext.w	s9,a4
    800061d8:	0b370663          	beq	a4,s3,80006284 <consoleread+0x130>
    800061dc:	00100693          	li	a3,1
    800061e0:	f9f40613          	addi	a2,s0,-97
    800061e4:	000c0593          	mv	a1,s8
    800061e8:	00090513          	mv	a0,s2
    800061ec:	f8e40fa3          	sb	a4,-97(s0)
    800061f0:	00000097          	auipc	ra,0x0
    800061f4:	8bc080e7          	jalr	-1860(ra) # 80005aac <either_copyout>
    800061f8:	01450863          	beq	a0,s4,80006208 <consoleread+0xb4>
    800061fc:	001c0c13          	addi	s8,s8,1
    80006200:	fffb8b9b          	addiw	s7,s7,-1
    80006204:	fb5c94e3          	bne	s9,s5,800061ac <consoleread+0x58>
    80006208:	000b851b          	sext.w	a0,s7
    8000620c:	06813083          	ld	ra,104(sp)
    80006210:	06013403          	ld	s0,96(sp)
    80006214:	05813483          	ld	s1,88(sp)
    80006218:	05013903          	ld	s2,80(sp)
    8000621c:	04813983          	ld	s3,72(sp)
    80006220:	04013a03          	ld	s4,64(sp)
    80006224:	03813a83          	ld	s5,56(sp)
    80006228:	02813b83          	ld	s7,40(sp)
    8000622c:	02013c03          	ld	s8,32(sp)
    80006230:	01813c83          	ld	s9,24(sp)
    80006234:	40ab053b          	subw	a0,s6,a0
    80006238:	03013b03          	ld	s6,48(sp)
    8000623c:	07010113          	addi	sp,sp,112
    80006240:	00008067          	ret
    80006244:	00001097          	auipc	ra,0x1
    80006248:	1d8080e7          	jalr	472(ra) # 8000741c <push_on>
    8000624c:	0984a703          	lw	a4,152(s1)
    80006250:	09c4a783          	lw	a5,156(s1)
    80006254:	0007879b          	sext.w	a5,a5
    80006258:	fef70ce3          	beq	a4,a5,80006250 <consoleread+0xfc>
    8000625c:	00001097          	auipc	ra,0x1
    80006260:	234080e7          	jalr	564(ra) # 80007490 <pop_on>
    80006264:	0984a783          	lw	a5,152(s1)
    80006268:	07f7f713          	andi	a4,a5,127
    8000626c:	00e48733          	add	a4,s1,a4
    80006270:	01874703          	lbu	a4,24(a4)
    80006274:	0017869b          	addiw	a3,a5,1
    80006278:	08d4ac23          	sw	a3,152(s1)
    8000627c:	00070c9b          	sext.w	s9,a4
    80006280:	f5371ee3          	bne	a4,s3,800061dc <consoleread+0x88>
    80006284:	000b851b          	sext.w	a0,s7
    80006288:	f96bf2e3          	bgeu	s7,s6,8000620c <consoleread+0xb8>
    8000628c:	08f4ac23          	sw	a5,152(s1)
    80006290:	f7dff06f          	j	8000620c <consoleread+0xb8>

0000000080006294 <consputc>:
    80006294:	10000793          	li	a5,256
    80006298:	00f50663          	beq	a0,a5,800062a4 <consputc+0x10>
    8000629c:	00001317          	auipc	t1,0x1
    800062a0:	9f430067          	jr	-1548(t1) # 80006c90 <uartputc_sync>
    800062a4:	ff010113          	addi	sp,sp,-16
    800062a8:	00113423          	sd	ra,8(sp)
    800062ac:	00813023          	sd	s0,0(sp)
    800062b0:	01010413          	addi	s0,sp,16
    800062b4:	00800513          	li	a0,8
    800062b8:	00001097          	auipc	ra,0x1
    800062bc:	9d8080e7          	jalr	-1576(ra) # 80006c90 <uartputc_sync>
    800062c0:	02000513          	li	a0,32
    800062c4:	00001097          	auipc	ra,0x1
    800062c8:	9cc080e7          	jalr	-1588(ra) # 80006c90 <uartputc_sync>
    800062cc:	00013403          	ld	s0,0(sp)
    800062d0:	00813083          	ld	ra,8(sp)
    800062d4:	00800513          	li	a0,8
    800062d8:	01010113          	addi	sp,sp,16
    800062dc:	00001317          	auipc	t1,0x1
    800062e0:	9b430067          	jr	-1612(t1) # 80006c90 <uartputc_sync>

00000000800062e4 <consoleintr>:
    800062e4:	fe010113          	addi	sp,sp,-32
    800062e8:	00813823          	sd	s0,16(sp)
    800062ec:	00913423          	sd	s1,8(sp)
    800062f0:	01213023          	sd	s2,0(sp)
    800062f4:	00113c23          	sd	ra,24(sp)
    800062f8:	02010413          	addi	s0,sp,32
    800062fc:	00004917          	auipc	s2,0x4
    80006300:	8cc90913          	addi	s2,s2,-1844 # 80009bc8 <cons>
    80006304:	00050493          	mv	s1,a0
    80006308:	00090513          	mv	a0,s2
    8000630c:	00001097          	auipc	ra,0x1
    80006310:	e40080e7          	jalr	-448(ra) # 8000714c <acquire>
    80006314:	02048c63          	beqz	s1,8000634c <consoleintr+0x68>
    80006318:	0a092783          	lw	a5,160(s2)
    8000631c:	09892703          	lw	a4,152(s2)
    80006320:	07f00693          	li	a3,127
    80006324:	40e7873b          	subw	a4,a5,a4
    80006328:	02e6e263          	bltu	a3,a4,8000634c <consoleintr+0x68>
    8000632c:	00d00713          	li	a4,13
    80006330:	04e48063          	beq	s1,a4,80006370 <consoleintr+0x8c>
    80006334:	07f7f713          	andi	a4,a5,127
    80006338:	00e90733          	add	a4,s2,a4
    8000633c:	0017879b          	addiw	a5,a5,1
    80006340:	0af92023          	sw	a5,160(s2)
    80006344:	00970c23          	sb	s1,24(a4)
    80006348:	08f92e23          	sw	a5,156(s2)
    8000634c:	01013403          	ld	s0,16(sp)
    80006350:	01813083          	ld	ra,24(sp)
    80006354:	00813483          	ld	s1,8(sp)
    80006358:	00013903          	ld	s2,0(sp)
    8000635c:	00004517          	auipc	a0,0x4
    80006360:	86c50513          	addi	a0,a0,-1940 # 80009bc8 <cons>
    80006364:	02010113          	addi	sp,sp,32
    80006368:	00001317          	auipc	t1,0x1
    8000636c:	eb030067          	jr	-336(t1) # 80007218 <release>
    80006370:	00a00493          	li	s1,10
    80006374:	fc1ff06f          	j	80006334 <consoleintr+0x50>

0000000080006378 <consoleinit>:
    80006378:	fe010113          	addi	sp,sp,-32
    8000637c:	00113c23          	sd	ra,24(sp)
    80006380:	00813823          	sd	s0,16(sp)
    80006384:	00913423          	sd	s1,8(sp)
    80006388:	02010413          	addi	s0,sp,32
    8000638c:	00004497          	auipc	s1,0x4
    80006390:	83c48493          	addi	s1,s1,-1988 # 80009bc8 <cons>
    80006394:	00048513          	mv	a0,s1
    80006398:	00002597          	auipc	a1,0x2
    8000639c:	34858593          	addi	a1,a1,840 # 800086e0 <CONSOLE_STATUS+0x6d0>
    800063a0:	00001097          	auipc	ra,0x1
    800063a4:	d88080e7          	jalr	-632(ra) # 80007128 <initlock>
    800063a8:	00000097          	auipc	ra,0x0
    800063ac:	7ac080e7          	jalr	1964(ra) # 80006b54 <uartinit>
    800063b0:	01813083          	ld	ra,24(sp)
    800063b4:	01013403          	ld	s0,16(sp)
    800063b8:	00000797          	auipc	a5,0x0
    800063bc:	d9c78793          	addi	a5,a5,-612 # 80006154 <consoleread>
    800063c0:	0af4bc23          	sd	a5,184(s1)
    800063c4:	00000797          	auipc	a5,0x0
    800063c8:	cec78793          	addi	a5,a5,-788 # 800060b0 <consolewrite>
    800063cc:	0cf4b023          	sd	a5,192(s1)
    800063d0:	00813483          	ld	s1,8(sp)
    800063d4:	02010113          	addi	sp,sp,32
    800063d8:	00008067          	ret

00000000800063dc <console_read>:
    800063dc:	ff010113          	addi	sp,sp,-16
    800063e0:	00813423          	sd	s0,8(sp)
    800063e4:	01010413          	addi	s0,sp,16
    800063e8:	00813403          	ld	s0,8(sp)
    800063ec:	00004317          	auipc	t1,0x4
    800063f0:	89433303          	ld	t1,-1900(t1) # 80009c80 <devsw+0x10>
    800063f4:	01010113          	addi	sp,sp,16
    800063f8:	00030067          	jr	t1

00000000800063fc <console_write>:
    800063fc:	ff010113          	addi	sp,sp,-16
    80006400:	00813423          	sd	s0,8(sp)
    80006404:	01010413          	addi	s0,sp,16
    80006408:	00813403          	ld	s0,8(sp)
    8000640c:	00004317          	auipc	t1,0x4
    80006410:	87c33303          	ld	t1,-1924(t1) # 80009c88 <devsw+0x18>
    80006414:	01010113          	addi	sp,sp,16
    80006418:	00030067          	jr	t1

000000008000641c <panic>:
    8000641c:	fe010113          	addi	sp,sp,-32
    80006420:	00113c23          	sd	ra,24(sp)
    80006424:	00813823          	sd	s0,16(sp)
    80006428:	00913423          	sd	s1,8(sp)
    8000642c:	02010413          	addi	s0,sp,32
    80006430:	00050493          	mv	s1,a0
    80006434:	00002517          	auipc	a0,0x2
    80006438:	2b450513          	addi	a0,a0,692 # 800086e8 <CONSOLE_STATUS+0x6d8>
    8000643c:	00004797          	auipc	a5,0x4
    80006440:	8e07a623          	sw	zero,-1812(a5) # 80009d28 <pr+0x18>
    80006444:	00000097          	auipc	ra,0x0
    80006448:	034080e7          	jalr	52(ra) # 80006478 <__printf>
    8000644c:	00048513          	mv	a0,s1
    80006450:	00000097          	auipc	ra,0x0
    80006454:	028080e7          	jalr	40(ra) # 80006478 <__printf>
    80006458:	00002517          	auipc	a0,0x2
    8000645c:	d4850513          	addi	a0,a0,-696 # 800081a0 <CONSOLE_STATUS+0x190>
    80006460:	00000097          	auipc	ra,0x0
    80006464:	018080e7          	jalr	24(ra) # 80006478 <__printf>
    80006468:	00100793          	li	a5,1
    8000646c:	00002717          	auipc	a4,0x2
    80006470:	54f72e23          	sw	a5,1372(a4) # 800089c8 <panicked>
    80006474:	0000006f          	j	80006474 <panic+0x58>

0000000080006478 <__printf>:
    80006478:	f3010113          	addi	sp,sp,-208
    8000647c:	08813023          	sd	s0,128(sp)
    80006480:	07313423          	sd	s3,104(sp)
    80006484:	09010413          	addi	s0,sp,144
    80006488:	05813023          	sd	s8,64(sp)
    8000648c:	08113423          	sd	ra,136(sp)
    80006490:	06913c23          	sd	s1,120(sp)
    80006494:	07213823          	sd	s2,112(sp)
    80006498:	07413023          	sd	s4,96(sp)
    8000649c:	05513c23          	sd	s5,88(sp)
    800064a0:	05613823          	sd	s6,80(sp)
    800064a4:	05713423          	sd	s7,72(sp)
    800064a8:	03913c23          	sd	s9,56(sp)
    800064ac:	03a13823          	sd	s10,48(sp)
    800064b0:	03b13423          	sd	s11,40(sp)
    800064b4:	00004317          	auipc	t1,0x4
    800064b8:	85c30313          	addi	t1,t1,-1956 # 80009d10 <pr>
    800064bc:	01832c03          	lw	s8,24(t1)
    800064c0:	00b43423          	sd	a1,8(s0)
    800064c4:	00c43823          	sd	a2,16(s0)
    800064c8:	00d43c23          	sd	a3,24(s0)
    800064cc:	02e43023          	sd	a4,32(s0)
    800064d0:	02f43423          	sd	a5,40(s0)
    800064d4:	03043823          	sd	a6,48(s0)
    800064d8:	03143c23          	sd	a7,56(s0)
    800064dc:	00050993          	mv	s3,a0
    800064e0:	4a0c1663          	bnez	s8,8000698c <__printf+0x514>
    800064e4:	60098c63          	beqz	s3,80006afc <__printf+0x684>
    800064e8:	0009c503          	lbu	a0,0(s3)
    800064ec:	00840793          	addi	a5,s0,8
    800064f0:	f6f43c23          	sd	a5,-136(s0)
    800064f4:	00000493          	li	s1,0
    800064f8:	22050063          	beqz	a0,80006718 <__printf+0x2a0>
    800064fc:	00002a37          	lui	s4,0x2
    80006500:	00018ab7          	lui	s5,0x18
    80006504:	000f4b37          	lui	s6,0xf4
    80006508:	00989bb7          	lui	s7,0x989
    8000650c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006510:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006514:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006518:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000651c:	00148c9b          	addiw	s9,s1,1
    80006520:	02500793          	li	a5,37
    80006524:	01998933          	add	s2,s3,s9
    80006528:	38f51263          	bne	a0,a5,800068ac <__printf+0x434>
    8000652c:	00094783          	lbu	a5,0(s2)
    80006530:	00078c9b          	sext.w	s9,a5
    80006534:	1e078263          	beqz	a5,80006718 <__printf+0x2a0>
    80006538:	0024849b          	addiw	s1,s1,2
    8000653c:	07000713          	li	a4,112
    80006540:	00998933          	add	s2,s3,s1
    80006544:	38e78a63          	beq	a5,a4,800068d8 <__printf+0x460>
    80006548:	20f76863          	bltu	a4,a5,80006758 <__printf+0x2e0>
    8000654c:	42a78863          	beq	a5,a0,8000697c <__printf+0x504>
    80006550:	06400713          	li	a4,100
    80006554:	40e79663          	bne	a5,a4,80006960 <__printf+0x4e8>
    80006558:	f7843783          	ld	a5,-136(s0)
    8000655c:	0007a603          	lw	a2,0(a5)
    80006560:	00878793          	addi	a5,a5,8
    80006564:	f6f43c23          	sd	a5,-136(s0)
    80006568:	42064a63          	bltz	a2,8000699c <__printf+0x524>
    8000656c:	00a00713          	li	a4,10
    80006570:	02e677bb          	remuw	a5,a2,a4
    80006574:	00002d97          	auipc	s11,0x2
    80006578:	19cd8d93          	addi	s11,s11,412 # 80008710 <digits>
    8000657c:	00900593          	li	a1,9
    80006580:	0006051b          	sext.w	a0,a2
    80006584:	00000c93          	li	s9,0
    80006588:	02079793          	slli	a5,a5,0x20
    8000658c:	0207d793          	srli	a5,a5,0x20
    80006590:	00fd87b3          	add	a5,s11,a5
    80006594:	0007c783          	lbu	a5,0(a5)
    80006598:	02e656bb          	divuw	a3,a2,a4
    8000659c:	f8f40023          	sb	a5,-128(s0)
    800065a0:	14c5d863          	bge	a1,a2,800066f0 <__printf+0x278>
    800065a4:	06300593          	li	a1,99
    800065a8:	00100c93          	li	s9,1
    800065ac:	02e6f7bb          	remuw	a5,a3,a4
    800065b0:	02079793          	slli	a5,a5,0x20
    800065b4:	0207d793          	srli	a5,a5,0x20
    800065b8:	00fd87b3          	add	a5,s11,a5
    800065bc:	0007c783          	lbu	a5,0(a5)
    800065c0:	02e6d73b          	divuw	a4,a3,a4
    800065c4:	f8f400a3          	sb	a5,-127(s0)
    800065c8:	12a5f463          	bgeu	a1,a0,800066f0 <__printf+0x278>
    800065cc:	00a00693          	li	a3,10
    800065d0:	00900593          	li	a1,9
    800065d4:	02d777bb          	remuw	a5,a4,a3
    800065d8:	02079793          	slli	a5,a5,0x20
    800065dc:	0207d793          	srli	a5,a5,0x20
    800065e0:	00fd87b3          	add	a5,s11,a5
    800065e4:	0007c503          	lbu	a0,0(a5)
    800065e8:	02d757bb          	divuw	a5,a4,a3
    800065ec:	f8a40123          	sb	a0,-126(s0)
    800065f0:	48e5f263          	bgeu	a1,a4,80006a74 <__printf+0x5fc>
    800065f4:	06300513          	li	a0,99
    800065f8:	02d7f5bb          	remuw	a1,a5,a3
    800065fc:	02059593          	slli	a1,a1,0x20
    80006600:	0205d593          	srli	a1,a1,0x20
    80006604:	00bd85b3          	add	a1,s11,a1
    80006608:	0005c583          	lbu	a1,0(a1)
    8000660c:	02d7d7bb          	divuw	a5,a5,a3
    80006610:	f8b401a3          	sb	a1,-125(s0)
    80006614:	48e57263          	bgeu	a0,a4,80006a98 <__printf+0x620>
    80006618:	3e700513          	li	a0,999
    8000661c:	02d7f5bb          	remuw	a1,a5,a3
    80006620:	02059593          	slli	a1,a1,0x20
    80006624:	0205d593          	srli	a1,a1,0x20
    80006628:	00bd85b3          	add	a1,s11,a1
    8000662c:	0005c583          	lbu	a1,0(a1)
    80006630:	02d7d7bb          	divuw	a5,a5,a3
    80006634:	f8b40223          	sb	a1,-124(s0)
    80006638:	46e57663          	bgeu	a0,a4,80006aa4 <__printf+0x62c>
    8000663c:	02d7f5bb          	remuw	a1,a5,a3
    80006640:	02059593          	slli	a1,a1,0x20
    80006644:	0205d593          	srli	a1,a1,0x20
    80006648:	00bd85b3          	add	a1,s11,a1
    8000664c:	0005c583          	lbu	a1,0(a1)
    80006650:	02d7d7bb          	divuw	a5,a5,a3
    80006654:	f8b402a3          	sb	a1,-123(s0)
    80006658:	46ea7863          	bgeu	s4,a4,80006ac8 <__printf+0x650>
    8000665c:	02d7f5bb          	remuw	a1,a5,a3
    80006660:	02059593          	slli	a1,a1,0x20
    80006664:	0205d593          	srli	a1,a1,0x20
    80006668:	00bd85b3          	add	a1,s11,a1
    8000666c:	0005c583          	lbu	a1,0(a1)
    80006670:	02d7d7bb          	divuw	a5,a5,a3
    80006674:	f8b40323          	sb	a1,-122(s0)
    80006678:	3eeaf863          	bgeu	s5,a4,80006a68 <__printf+0x5f0>
    8000667c:	02d7f5bb          	remuw	a1,a5,a3
    80006680:	02059593          	slli	a1,a1,0x20
    80006684:	0205d593          	srli	a1,a1,0x20
    80006688:	00bd85b3          	add	a1,s11,a1
    8000668c:	0005c583          	lbu	a1,0(a1)
    80006690:	02d7d7bb          	divuw	a5,a5,a3
    80006694:	f8b403a3          	sb	a1,-121(s0)
    80006698:	42eb7e63          	bgeu	s6,a4,80006ad4 <__printf+0x65c>
    8000669c:	02d7f5bb          	remuw	a1,a5,a3
    800066a0:	02059593          	slli	a1,a1,0x20
    800066a4:	0205d593          	srli	a1,a1,0x20
    800066a8:	00bd85b3          	add	a1,s11,a1
    800066ac:	0005c583          	lbu	a1,0(a1)
    800066b0:	02d7d7bb          	divuw	a5,a5,a3
    800066b4:	f8b40423          	sb	a1,-120(s0)
    800066b8:	42ebfc63          	bgeu	s7,a4,80006af0 <__printf+0x678>
    800066bc:	02079793          	slli	a5,a5,0x20
    800066c0:	0207d793          	srli	a5,a5,0x20
    800066c4:	00fd8db3          	add	s11,s11,a5
    800066c8:	000dc703          	lbu	a4,0(s11)
    800066cc:	00a00793          	li	a5,10
    800066d0:	00900c93          	li	s9,9
    800066d4:	f8e404a3          	sb	a4,-119(s0)
    800066d8:	00065c63          	bgez	a2,800066f0 <__printf+0x278>
    800066dc:	f9040713          	addi	a4,s0,-112
    800066e0:	00f70733          	add	a4,a4,a5
    800066e4:	02d00693          	li	a3,45
    800066e8:	fed70823          	sb	a3,-16(a4)
    800066ec:	00078c93          	mv	s9,a5
    800066f0:	f8040793          	addi	a5,s0,-128
    800066f4:	01978cb3          	add	s9,a5,s9
    800066f8:	f7f40d13          	addi	s10,s0,-129
    800066fc:	000cc503          	lbu	a0,0(s9)
    80006700:	fffc8c93          	addi	s9,s9,-1
    80006704:	00000097          	auipc	ra,0x0
    80006708:	b90080e7          	jalr	-1136(ra) # 80006294 <consputc>
    8000670c:	ffac98e3          	bne	s9,s10,800066fc <__printf+0x284>
    80006710:	00094503          	lbu	a0,0(s2)
    80006714:	e00514e3          	bnez	a0,8000651c <__printf+0xa4>
    80006718:	1a0c1663          	bnez	s8,800068c4 <__printf+0x44c>
    8000671c:	08813083          	ld	ra,136(sp)
    80006720:	08013403          	ld	s0,128(sp)
    80006724:	07813483          	ld	s1,120(sp)
    80006728:	07013903          	ld	s2,112(sp)
    8000672c:	06813983          	ld	s3,104(sp)
    80006730:	06013a03          	ld	s4,96(sp)
    80006734:	05813a83          	ld	s5,88(sp)
    80006738:	05013b03          	ld	s6,80(sp)
    8000673c:	04813b83          	ld	s7,72(sp)
    80006740:	04013c03          	ld	s8,64(sp)
    80006744:	03813c83          	ld	s9,56(sp)
    80006748:	03013d03          	ld	s10,48(sp)
    8000674c:	02813d83          	ld	s11,40(sp)
    80006750:	0d010113          	addi	sp,sp,208
    80006754:	00008067          	ret
    80006758:	07300713          	li	a4,115
    8000675c:	1ce78a63          	beq	a5,a4,80006930 <__printf+0x4b8>
    80006760:	07800713          	li	a4,120
    80006764:	1ee79e63          	bne	a5,a4,80006960 <__printf+0x4e8>
    80006768:	f7843783          	ld	a5,-136(s0)
    8000676c:	0007a703          	lw	a4,0(a5)
    80006770:	00878793          	addi	a5,a5,8
    80006774:	f6f43c23          	sd	a5,-136(s0)
    80006778:	28074263          	bltz	a4,800069fc <__printf+0x584>
    8000677c:	00002d97          	auipc	s11,0x2
    80006780:	f94d8d93          	addi	s11,s11,-108 # 80008710 <digits>
    80006784:	00f77793          	andi	a5,a4,15
    80006788:	00fd87b3          	add	a5,s11,a5
    8000678c:	0007c683          	lbu	a3,0(a5)
    80006790:	00f00613          	li	a2,15
    80006794:	0007079b          	sext.w	a5,a4
    80006798:	f8d40023          	sb	a3,-128(s0)
    8000679c:	0047559b          	srliw	a1,a4,0x4
    800067a0:	0047569b          	srliw	a3,a4,0x4
    800067a4:	00000c93          	li	s9,0
    800067a8:	0ee65063          	bge	a2,a4,80006888 <__printf+0x410>
    800067ac:	00f6f693          	andi	a3,a3,15
    800067b0:	00dd86b3          	add	a3,s11,a3
    800067b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800067b8:	0087d79b          	srliw	a5,a5,0x8
    800067bc:	00100c93          	li	s9,1
    800067c0:	f8d400a3          	sb	a3,-127(s0)
    800067c4:	0cb67263          	bgeu	a2,a1,80006888 <__printf+0x410>
    800067c8:	00f7f693          	andi	a3,a5,15
    800067cc:	00dd86b3          	add	a3,s11,a3
    800067d0:	0006c583          	lbu	a1,0(a3)
    800067d4:	00f00613          	li	a2,15
    800067d8:	0047d69b          	srliw	a3,a5,0x4
    800067dc:	f8b40123          	sb	a1,-126(s0)
    800067e0:	0047d593          	srli	a1,a5,0x4
    800067e4:	28f67e63          	bgeu	a2,a5,80006a80 <__printf+0x608>
    800067e8:	00f6f693          	andi	a3,a3,15
    800067ec:	00dd86b3          	add	a3,s11,a3
    800067f0:	0006c503          	lbu	a0,0(a3)
    800067f4:	0087d813          	srli	a6,a5,0x8
    800067f8:	0087d69b          	srliw	a3,a5,0x8
    800067fc:	f8a401a3          	sb	a0,-125(s0)
    80006800:	28b67663          	bgeu	a2,a1,80006a8c <__printf+0x614>
    80006804:	00f6f693          	andi	a3,a3,15
    80006808:	00dd86b3          	add	a3,s11,a3
    8000680c:	0006c583          	lbu	a1,0(a3)
    80006810:	00c7d513          	srli	a0,a5,0xc
    80006814:	00c7d69b          	srliw	a3,a5,0xc
    80006818:	f8b40223          	sb	a1,-124(s0)
    8000681c:	29067a63          	bgeu	a2,a6,80006ab0 <__printf+0x638>
    80006820:	00f6f693          	andi	a3,a3,15
    80006824:	00dd86b3          	add	a3,s11,a3
    80006828:	0006c583          	lbu	a1,0(a3)
    8000682c:	0107d813          	srli	a6,a5,0x10
    80006830:	0107d69b          	srliw	a3,a5,0x10
    80006834:	f8b402a3          	sb	a1,-123(s0)
    80006838:	28a67263          	bgeu	a2,a0,80006abc <__printf+0x644>
    8000683c:	00f6f693          	andi	a3,a3,15
    80006840:	00dd86b3          	add	a3,s11,a3
    80006844:	0006c683          	lbu	a3,0(a3)
    80006848:	0147d79b          	srliw	a5,a5,0x14
    8000684c:	f8d40323          	sb	a3,-122(s0)
    80006850:	21067663          	bgeu	a2,a6,80006a5c <__printf+0x5e4>
    80006854:	02079793          	slli	a5,a5,0x20
    80006858:	0207d793          	srli	a5,a5,0x20
    8000685c:	00fd8db3          	add	s11,s11,a5
    80006860:	000dc683          	lbu	a3,0(s11)
    80006864:	00800793          	li	a5,8
    80006868:	00700c93          	li	s9,7
    8000686c:	f8d403a3          	sb	a3,-121(s0)
    80006870:	00075c63          	bgez	a4,80006888 <__printf+0x410>
    80006874:	f9040713          	addi	a4,s0,-112
    80006878:	00f70733          	add	a4,a4,a5
    8000687c:	02d00693          	li	a3,45
    80006880:	fed70823          	sb	a3,-16(a4)
    80006884:	00078c93          	mv	s9,a5
    80006888:	f8040793          	addi	a5,s0,-128
    8000688c:	01978cb3          	add	s9,a5,s9
    80006890:	f7f40d13          	addi	s10,s0,-129
    80006894:	000cc503          	lbu	a0,0(s9)
    80006898:	fffc8c93          	addi	s9,s9,-1
    8000689c:	00000097          	auipc	ra,0x0
    800068a0:	9f8080e7          	jalr	-1544(ra) # 80006294 <consputc>
    800068a4:	ff9d18e3          	bne	s10,s9,80006894 <__printf+0x41c>
    800068a8:	0100006f          	j	800068b8 <__printf+0x440>
    800068ac:	00000097          	auipc	ra,0x0
    800068b0:	9e8080e7          	jalr	-1560(ra) # 80006294 <consputc>
    800068b4:	000c8493          	mv	s1,s9
    800068b8:	00094503          	lbu	a0,0(s2)
    800068bc:	c60510e3          	bnez	a0,8000651c <__printf+0xa4>
    800068c0:	e40c0ee3          	beqz	s8,8000671c <__printf+0x2a4>
    800068c4:	00003517          	auipc	a0,0x3
    800068c8:	44c50513          	addi	a0,a0,1100 # 80009d10 <pr>
    800068cc:	00001097          	auipc	ra,0x1
    800068d0:	94c080e7          	jalr	-1716(ra) # 80007218 <release>
    800068d4:	e49ff06f          	j	8000671c <__printf+0x2a4>
    800068d8:	f7843783          	ld	a5,-136(s0)
    800068dc:	03000513          	li	a0,48
    800068e0:	01000d13          	li	s10,16
    800068e4:	00878713          	addi	a4,a5,8
    800068e8:	0007bc83          	ld	s9,0(a5)
    800068ec:	f6e43c23          	sd	a4,-136(s0)
    800068f0:	00000097          	auipc	ra,0x0
    800068f4:	9a4080e7          	jalr	-1628(ra) # 80006294 <consputc>
    800068f8:	07800513          	li	a0,120
    800068fc:	00000097          	auipc	ra,0x0
    80006900:	998080e7          	jalr	-1640(ra) # 80006294 <consputc>
    80006904:	00002d97          	auipc	s11,0x2
    80006908:	e0cd8d93          	addi	s11,s11,-500 # 80008710 <digits>
    8000690c:	03ccd793          	srli	a5,s9,0x3c
    80006910:	00fd87b3          	add	a5,s11,a5
    80006914:	0007c503          	lbu	a0,0(a5)
    80006918:	fffd0d1b          	addiw	s10,s10,-1
    8000691c:	004c9c93          	slli	s9,s9,0x4
    80006920:	00000097          	auipc	ra,0x0
    80006924:	974080e7          	jalr	-1676(ra) # 80006294 <consputc>
    80006928:	fe0d12e3          	bnez	s10,8000690c <__printf+0x494>
    8000692c:	f8dff06f          	j	800068b8 <__printf+0x440>
    80006930:	f7843783          	ld	a5,-136(s0)
    80006934:	0007bc83          	ld	s9,0(a5)
    80006938:	00878793          	addi	a5,a5,8
    8000693c:	f6f43c23          	sd	a5,-136(s0)
    80006940:	000c9a63          	bnez	s9,80006954 <__printf+0x4dc>
    80006944:	1080006f          	j	80006a4c <__printf+0x5d4>
    80006948:	001c8c93          	addi	s9,s9,1
    8000694c:	00000097          	auipc	ra,0x0
    80006950:	948080e7          	jalr	-1720(ra) # 80006294 <consputc>
    80006954:	000cc503          	lbu	a0,0(s9)
    80006958:	fe0518e3          	bnez	a0,80006948 <__printf+0x4d0>
    8000695c:	f5dff06f          	j	800068b8 <__printf+0x440>
    80006960:	02500513          	li	a0,37
    80006964:	00000097          	auipc	ra,0x0
    80006968:	930080e7          	jalr	-1744(ra) # 80006294 <consputc>
    8000696c:	000c8513          	mv	a0,s9
    80006970:	00000097          	auipc	ra,0x0
    80006974:	924080e7          	jalr	-1756(ra) # 80006294 <consputc>
    80006978:	f41ff06f          	j	800068b8 <__printf+0x440>
    8000697c:	02500513          	li	a0,37
    80006980:	00000097          	auipc	ra,0x0
    80006984:	914080e7          	jalr	-1772(ra) # 80006294 <consputc>
    80006988:	f31ff06f          	j	800068b8 <__printf+0x440>
    8000698c:	00030513          	mv	a0,t1
    80006990:	00000097          	auipc	ra,0x0
    80006994:	7bc080e7          	jalr	1980(ra) # 8000714c <acquire>
    80006998:	b4dff06f          	j	800064e4 <__printf+0x6c>
    8000699c:	40c0053b          	negw	a0,a2
    800069a0:	00a00713          	li	a4,10
    800069a4:	02e576bb          	remuw	a3,a0,a4
    800069a8:	00002d97          	auipc	s11,0x2
    800069ac:	d68d8d93          	addi	s11,s11,-664 # 80008710 <digits>
    800069b0:	ff700593          	li	a1,-9
    800069b4:	02069693          	slli	a3,a3,0x20
    800069b8:	0206d693          	srli	a3,a3,0x20
    800069bc:	00dd86b3          	add	a3,s11,a3
    800069c0:	0006c683          	lbu	a3,0(a3)
    800069c4:	02e557bb          	divuw	a5,a0,a4
    800069c8:	f8d40023          	sb	a3,-128(s0)
    800069cc:	10b65e63          	bge	a2,a1,80006ae8 <__printf+0x670>
    800069d0:	06300593          	li	a1,99
    800069d4:	02e7f6bb          	remuw	a3,a5,a4
    800069d8:	02069693          	slli	a3,a3,0x20
    800069dc:	0206d693          	srli	a3,a3,0x20
    800069e0:	00dd86b3          	add	a3,s11,a3
    800069e4:	0006c683          	lbu	a3,0(a3)
    800069e8:	02e7d73b          	divuw	a4,a5,a4
    800069ec:	00200793          	li	a5,2
    800069f0:	f8d400a3          	sb	a3,-127(s0)
    800069f4:	bca5ece3          	bltu	a1,a0,800065cc <__printf+0x154>
    800069f8:	ce5ff06f          	j	800066dc <__printf+0x264>
    800069fc:	40e007bb          	negw	a5,a4
    80006a00:	00002d97          	auipc	s11,0x2
    80006a04:	d10d8d93          	addi	s11,s11,-752 # 80008710 <digits>
    80006a08:	00f7f693          	andi	a3,a5,15
    80006a0c:	00dd86b3          	add	a3,s11,a3
    80006a10:	0006c583          	lbu	a1,0(a3)
    80006a14:	ff100613          	li	a2,-15
    80006a18:	0047d69b          	srliw	a3,a5,0x4
    80006a1c:	f8b40023          	sb	a1,-128(s0)
    80006a20:	0047d59b          	srliw	a1,a5,0x4
    80006a24:	0ac75e63          	bge	a4,a2,80006ae0 <__printf+0x668>
    80006a28:	00f6f693          	andi	a3,a3,15
    80006a2c:	00dd86b3          	add	a3,s11,a3
    80006a30:	0006c603          	lbu	a2,0(a3)
    80006a34:	00f00693          	li	a3,15
    80006a38:	0087d79b          	srliw	a5,a5,0x8
    80006a3c:	f8c400a3          	sb	a2,-127(s0)
    80006a40:	d8b6e4e3          	bltu	a3,a1,800067c8 <__printf+0x350>
    80006a44:	00200793          	li	a5,2
    80006a48:	e2dff06f          	j	80006874 <__printf+0x3fc>
    80006a4c:	00002c97          	auipc	s9,0x2
    80006a50:	ca4c8c93          	addi	s9,s9,-860 # 800086f0 <CONSOLE_STATUS+0x6e0>
    80006a54:	02800513          	li	a0,40
    80006a58:	ef1ff06f          	j	80006948 <__printf+0x4d0>
    80006a5c:	00700793          	li	a5,7
    80006a60:	00600c93          	li	s9,6
    80006a64:	e0dff06f          	j	80006870 <__printf+0x3f8>
    80006a68:	00700793          	li	a5,7
    80006a6c:	00600c93          	li	s9,6
    80006a70:	c69ff06f          	j	800066d8 <__printf+0x260>
    80006a74:	00300793          	li	a5,3
    80006a78:	00200c93          	li	s9,2
    80006a7c:	c5dff06f          	j	800066d8 <__printf+0x260>
    80006a80:	00300793          	li	a5,3
    80006a84:	00200c93          	li	s9,2
    80006a88:	de9ff06f          	j	80006870 <__printf+0x3f8>
    80006a8c:	00400793          	li	a5,4
    80006a90:	00300c93          	li	s9,3
    80006a94:	dddff06f          	j	80006870 <__printf+0x3f8>
    80006a98:	00400793          	li	a5,4
    80006a9c:	00300c93          	li	s9,3
    80006aa0:	c39ff06f          	j	800066d8 <__printf+0x260>
    80006aa4:	00500793          	li	a5,5
    80006aa8:	00400c93          	li	s9,4
    80006aac:	c2dff06f          	j	800066d8 <__printf+0x260>
    80006ab0:	00500793          	li	a5,5
    80006ab4:	00400c93          	li	s9,4
    80006ab8:	db9ff06f          	j	80006870 <__printf+0x3f8>
    80006abc:	00600793          	li	a5,6
    80006ac0:	00500c93          	li	s9,5
    80006ac4:	dadff06f          	j	80006870 <__printf+0x3f8>
    80006ac8:	00600793          	li	a5,6
    80006acc:	00500c93          	li	s9,5
    80006ad0:	c09ff06f          	j	800066d8 <__printf+0x260>
    80006ad4:	00800793          	li	a5,8
    80006ad8:	00700c93          	li	s9,7
    80006adc:	bfdff06f          	j	800066d8 <__printf+0x260>
    80006ae0:	00100793          	li	a5,1
    80006ae4:	d91ff06f          	j	80006874 <__printf+0x3fc>
    80006ae8:	00100793          	li	a5,1
    80006aec:	bf1ff06f          	j	800066dc <__printf+0x264>
    80006af0:	00900793          	li	a5,9
    80006af4:	00800c93          	li	s9,8
    80006af8:	be1ff06f          	j	800066d8 <__printf+0x260>
    80006afc:	00002517          	auipc	a0,0x2
    80006b00:	bfc50513          	addi	a0,a0,-1028 # 800086f8 <CONSOLE_STATUS+0x6e8>
    80006b04:	00000097          	auipc	ra,0x0
    80006b08:	918080e7          	jalr	-1768(ra) # 8000641c <panic>

0000000080006b0c <printfinit>:
    80006b0c:	fe010113          	addi	sp,sp,-32
    80006b10:	00813823          	sd	s0,16(sp)
    80006b14:	00913423          	sd	s1,8(sp)
    80006b18:	00113c23          	sd	ra,24(sp)
    80006b1c:	02010413          	addi	s0,sp,32
    80006b20:	00003497          	auipc	s1,0x3
    80006b24:	1f048493          	addi	s1,s1,496 # 80009d10 <pr>
    80006b28:	00048513          	mv	a0,s1
    80006b2c:	00002597          	auipc	a1,0x2
    80006b30:	bdc58593          	addi	a1,a1,-1060 # 80008708 <CONSOLE_STATUS+0x6f8>
    80006b34:	00000097          	auipc	ra,0x0
    80006b38:	5f4080e7          	jalr	1524(ra) # 80007128 <initlock>
    80006b3c:	01813083          	ld	ra,24(sp)
    80006b40:	01013403          	ld	s0,16(sp)
    80006b44:	0004ac23          	sw	zero,24(s1)
    80006b48:	00813483          	ld	s1,8(sp)
    80006b4c:	02010113          	addi	sp,sp,32
    80006b50:	00008067          	ret

0000000080006b54 <uartinit>:
    80006b54:	ff010113          	addi	sp,sp,-16
    80006b58:	00813423          	sd	s0,8(sp)
    80006b5c:	01010413          	addi	s0,sp,16
    80006b60:	100007b7          	lui	a5,0x10000
    80006b64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006b68:	f8000713          	li	a4,-128
    80006b6c:	00e781a3          	sb	a4,3(a5)
    80006b70:	00300713          	li	a4,3
    80006b74:	00e78023          	sb	a4,0(a5)
    80006b78:	000780a3          	sb	zero,1(a5)
    80006b7c:	00e781a3          	sb	a4,3(a5)
    80006b80:	00700693          	li	a3,7
    80006b84:	00d78123          	sb	a3,2(a5)
    80006b88:	00e780a3          	sb	a4,1(a5)
    80006b8c:	00813403          	ld	s0,8(sp)
    80006b90:	01010113          	addi	sp,sp,16
    80006b94:	00008067          	ret

0000000080006b98 <uartputc>:
    80006b98:	00002797          	auipc	a5,0x2
    80006b9c:	e307a783          	lw	a5,-464(a5) # 800089c8 <panicked>
    80006ba0:	00078463          	beqz	a5,80006ba8 <uartputc+0x10>
    80006ba4:	0000006f          	j	80006ba4 <uartputc+0xc>
    80006ba8:	fd010113          	addi	sp,sp,-48
    80006bac:	02813023          	sd	s0,32(sp)
    80006bb0:	00913c23          	sd	s1,24(sp)
    80006bb4:	01213823          	sd	s2,16(sp)
    80006bb8:	01313423          	sd	s3,8(sp)
    80006bbc:	02113423          	sd	ra,40(sp)
    80006bc0:	03010413          	addi	s0,sp,48
    80006bc4:	00002917          	auipc	s2,0x2
    80006bc8:	e0c90913          	addi	s2,s2,-500 # 800089d0 <uart_tx_r>
    80006bcc:	00093783          	ld	a5,0(s2)
    80006bd0:	00002497          	auipc	s1,0x2
    80006bd4:	e0848493          	addi	s1,s1,-504 # 800089d8 <uart_tx_w>
    80006bd8:	0004b703          	ld	a4,0(s1)
    80006bdc:	02078693          	addi	a3,a5,32
    80006be0:	00050993          	mv	s3,a0
    80006be4:	02e69c63          	bne	a3,a4,80006c1c <uartputc+0x84>
    80006be8:	00001097          	auipc	ra,0x1
    80006bec:	834080e7          	jalr	-1996(ra) # 8000741c <push_on>
    80006bf0:	00093783          	ld	a5,0(s2)
    80006bf4:	0004b703          	ld	a4,0(s1)
    80006bf8:	02078793          	addi	a5,a5,32
    80006bfc:	00e79463          	bne	a5,a4,80006c04 <uartputc+0x6c>
    80006c00:	0000006f          	j	80006c00 <uartputc+0x68>
    80006c04:	00001097          	auipc	ra,0x1
    80006c08:	88c080e7          	jalr	-1908(ra) # 80007490 <pop_on>
    80006c0c:	00093783          	ld	a5,0(s2)
    80006c10:	0004b703          	ld	a4,0(s1)
    80006c14:	02078693          	addi	a3,a5,32
    80006c18:	fce688e3          	beq	a3,a4,80006be8 <uartputc+0x50>
    80006c1c:	01f77693          	andi	a3,a4,31
    80006c20:	00003597          	auipc	a1,0x3
    80006c24:	11058593          	addi	a1,a1,272 # 80009d30 <uart_tx_buf>
    80006c28:	00d586b3          	add	a3,a1,a3
    80006c2c:	00170713          	addi	a4,a4,1
    80006c30:	01368023          	sb	s3,0(a3)
    80006c34:	00e4b023          	sd	a4,0(s1)
    80006c38:	10000637          	lui	a2,0x10000
    80006c3c:	02f71063          	bne	a4,a5,80006c5c <uartputc+0xc4>
    80006c40:	0340006f          	j	80006c74 <uartputc+0xdc>
    80006c44:	00074703          	lbu	a4,0(a4)
    80006c48:	00f93023          	sd	a5,0(s2)
    80006c4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006c50:	00093783          	ld	a5,0(s2)
    80006c54:	0004b703          	ld	a4,0(s1)
    80006c58:	00f70e63          	beq	a4,a5,80006c74 <uartputc+0xdc>
    80006c5c:	00564683          	lbu	a3,5(a2)
    80006c60:	01f7f713          	andi	a4,a5,31
    80006c64:	00e58733          	add	a4,a1,a4
    80006c68:	0206f693          	andi	a3,a3,32
    80006c6c:	00178793          	addi	a5,a5,1
    80006c70:	fc069ae3          	bnez	a3,80006c44 <uartputc+0xac>
    80006c74:	02813083          	ld	ra,40(sp)
    80006c78:	02013403          	ld	s0,32(sp)
    80006c7c:	01813483          	ld	s1,24(sp)
    80006c80:	01013903          	ld	s2,16(sp)
    80006c84:	00813983          	ld	s3,8(sp)
    80006c88:	03010113          	addi	sp,sp,48
    80006c8c:	00008067          	ret

0000000080006c90 <uartputc_sync>:
    80006c90:	ff010113          	addi	sp,sp,-16
    80006c94:	00813423          	sd	s0,8(sp)
    80006c98:	01010413          	addi	s0,sp,16
    80006c9c:	00002717          	auipc	a4,0x2
    80006ca0:	d2c72703          	lw	a4,-724(a4) # 800089c8 <panicked>
    80006ca4:	02071663          	bnez	a4,80006cd0 <uartputc_sync+0x40>
    80006ca8:	00050793          	mv	a5,a0
    80006cac:	100006b7          	lui	a3,0x10000
    80006cb0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006cb4:	02077713          	andi	a4,a4,32
    80006cb8:	fe070ce3          	beqz	a4,80006cb0 <uartputc_sync+0x20>
    80006cbc:	0ff7f793          	andi	a5,a5,255
    80006cc0:	00f68023          	sb	a5,0(a3)
    80006cc4:	00813403          	ld	s0,8(sp)
    80006cc8:	01010113          	addi	sp,sp,16
    80006ccc:	00008067          	ret
    80006cd0:	0000006f          	j	80006cd0 <uartputc_sync+0x40>

0000000080006cd4 <uartstart>:
    80006cd4:	ff010113          	addi	sp,sp,-16
    80006cd8:	00813423          	sd	s0,8(sp)
    80006cdc:	01010413          	addi	s0,sp,16
    80006ce0:	00002617          	auipc	a2,0x2
    80006ce4:	cf060613          	addi	a2,a2,-784 # 800089d0 <uart_tx_r>
    80006ce8:	00002517          	auipc	a0,0x2
    80006cec:	cf050513          	addi	a0,a0,-784 # 800089d8 <uart_tx_w>
    80006cf0:	00063783          	ld	a5,0(a2)
    80006cf4:	00053703          	ld	a4,0(a0)
    80006cf8:	04f70263          	beq	a4,a5,80006d3c <uartstart+0x68>
    80006cfc:	100005b7          	lui	a1,0x10000
    80006d00:	00003817          	auipc	a6,0x3
    80006d04:	03080813          	addi	a6,a6,48 # 80009d30 <uart_tx_buf>
    80006d08:	01c0006f          	j	80006d24 <uartstart+0x50>
    80006d0c:	0006c703          	lbu	a4,0(a3)
    80006d10:	00f63023          	sd	a5,0(a2)
    80006d14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006d18:	00063783          	ld	a5,0(a2)
    80006d1c:	00053703          	ld	a4,0(a0)
    80006d20:	00f70e63          	beq	a4,a5,80006d3c <uartstart+0x68>
    80006d24:	01f7f713          	andi	a4,a5,31
    80006d28:	00e806b3          	add	a3,a6,a4
    80006d2c:	0055c703          	lbu	a4,5(a1)
    80006d30:	00178793          	addi	a5,a5,1
    80006d34:	02077713          	andi	a4,a4,32
    80006d38:	fc071ae3          	bnez	a4,80006d0c <uartstart+0x38>
    80006d3c:	00813403          	ld	s0,8(sp)
    80006d40:	01010113          	addi	sp,sp,16
    80006d44:	00008067          	ret

0000000080006d48 <uartgetc>:
    80006d48:	ff010113          	addi	sp,sp,-16
    80006d4c:	00813423          	sd	s0,8(sp)
    80006d50:	01010413          	addi	s0,sp,16
    80006d54:	10000737          	lui	a4,0x10000
    80006d58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006d5c:	0017f793          	andi	a5,a5,1
    80006d60:	00078c63          	beqz	a5,80006d78 <uartgetc+0x30>
    80006d64:	00074503          	lbu	a0,0(a4)
    80006d68:	0ff57513          	andi	a0,a0,255
    80006d6c:	00813403          	ld	s0,8(sp)
    80006d70:	01010113          	addi	sp,sp,16
    80006d74:	00008067          	ret
    80006d78:	fff00513          	li	a0,-1
    80006d7c:	ff1ff06f          	j	80006d6c <uartgetc+0x24>

0000000080006d80 <uartintr>:
    80006d80:	100007b7          	lui	a5,0x10000
    80006d84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006d88:	0017f793          	andi	a5,a5,1
    80006d8c:	0a078463          	beqz	a5,80006e34 <uartintr+0xb4>
    80006d90:	fe010113          	addi	sp,sp,-32
    80006d94:	00813823          	sd	s0,16(sp)
    80006d98:	00913423          	sd	s1,8(sp)
    80006d9c:	00113c23          	sd	ra,24(sp)
    80006da0:	02010413          	addi	s0,sp,32
    80006da4:	100004b7          	lui	s1,0x10000
    80006da8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006dac:	0ff57513          	andi	a0,a0,255
    80006db0:	fffff097          	auipc	ra,0xfffff
    80006db4:	534080e7          	jalr	1332(ra) # 800062e4 <consoleintr>
    80006db8:	0054c783          	lbu	a5,5(s1)
    80006dbc:	0017f793          	andi	a5,a5,1
    80006dc0:	fe0794e3          	bnez	a5,80006da8 <uartintr+0x28>
    80006dc4:	00002617          	auipc	a2,0x2
    80006dc8:	c0c60613          	addi	a2,a2,-1012 # 800089d0 <uart_tx_r>
    80006dcc:	00002517          	auipc	a0,0x2
    80006dd0:	c0c50513          	addi	a0,a0,-1012 # 800089d8 <uart_tx_w>
    80006dd4:	00063783          	ld	a5,0(a2)
    80006dd8:	00053703          	ld	a4,0(a0)
    80006ddc:	04f70263          	beq	a4,a5,80006e20 <uartintr+0xa0>
    80006de0:	100005b7          	lui	a1,0x10000
    80006de4:	00003817          	auipc	a6,0x3
    80006de8:	f4c80813          	addi	a6,a6,-180 # 80009d30 <uart_tx_buf>
    80006dec:	01c0006f          	j	80006e08 <uartintr+0x88>
    80006df0:	0006c703          	lbu	a4,0(a3)
    80006df4:	00f63023          	sd	a5,0(a2)
    80006df8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006dfc:	00063783          	ld	a5,0(a2)
    80006e00:	00053703          	ld	a4,0(a0)
    80006e04:	00f70e63          	beq	a4,a5,80006e20 <uartintr+0xa0>
    80006e08:	01f7f713          	andi	a4,a5,31
    80006e0c:	00e806b3          	add	a3,a6,a4
    80006e10:	0055c703          	lbu	a4,5(a1)
    80006e14:	00178793          	addi	a5,a5,1
    80006e18:	02077713          	andi	a4,a4,32
    80006e1c:	fc071ae3          	bnez	a4,80006df0 <uartintr+0x70>
    80006e20:	01813083          	ld	ra,24(sp)
    80006e24:	01013403          	ld	s0,16(sp)
    80006e28:	00813483          	ld	s1,8(sp)
    80006e2c:	02010113          	addi	sp,sp,32
    80006e30:	00008067          	ret
    80006e34:	00002617          	auipc	a2,0x2
    80006e38:	b9c60613          	addi	a2,a2,-1124 # 800089d0 <uart_tx_r>
    80006e3c:	00002517          	auipc	a0,0x2
    80006e40:	b9c50513          	addi	a0,a0,-1124 # 800089d8 <uart_tx_w>
    80006e44:	00063783          	ld	a5,0(a2)
    80006e48:	00053703          	ld	a4,0(a0)
    80006e4c:	04f70263          	beq	a4,a5,80006e90 <uartintr+0x110>
    80006e50:	100005b7          	lui	a1,0x10000
    80006e54:	00003817          	auipc	a6,0x3
    80006e58:	edc80813          	addi	a6,a6,-292 # 80009d30 <uart_tx_buf>
    80006e5c:	01c0006f          	j	80006e78 <uartintr+0xf8>
    80006e60:	0006c703          	lbu	a4,0(a3)
    80006e64:	00f63023          	sd	a5,0(a2)
    80006e68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006e6c:	00063783          	ld	a5,0(a2)
    80006e70:	00053703          	ld	a4,0(a0)
    80006e74:	02f70063          	beq	a4,a5,80006e94 <uartintr+0x114>
    80006e78:	01f7f713          	andi	a4,a5,31
    80006e7c:	00e806b3          	add	a3,a6,a4
    80006e80:	0055c703          	lbu	a4,5(a1)
    80006e84:	00178793          	addi	a5,a5,1
    80006e88:	02077713          	andi	a4,a4,32
    80006e8c:	fc071ae3          	bnez	a4,80006e60 <uartintr+0xe0>
    80006e90:	00008067          	ret
    80006e94:	00008067          	ret

0000000080006e98 <kinit>:
    80006e98:	fc010113          	addi	sp,sp,-64
    80006e9c:	02913423          	sd	s1,40(sp)
    80006ea0:	fffff7b7          	lui	a5,0xfffff
    80006ea4:	00009497          	auipc	s1,0x9
    80006ea8:	15b48493          	addi	s1,s1,347 # 8000ffff <end+0xfff>
    80006eac:	02813823          	sd	s0,48(sp)
    80006eb0:	01313c23          	sd	s3,24(sp)
    80006eb4:	00f4f4b3          	and	s1,s1,a5
    80006eb8:	02113c23          	sd	ra,56(sp)
    80006ebc:	03213023          	sd	s2,32(sp)
    80006ec0:	01413823          	sd	s4,16(sp)
    80006ec4:	01513423          	sd	s5,8(sp)
    80006ec8:	04010413          	addi	s0,sp,64
    80006ecc:	000017b7          	lui	a5,0x1
    80006ed0:	01100993          	li	s3,17
    80006ed4:	00f487b3          	add	a5,s1,a5
    80006ed8:	01b99993          	slli	s3,s3,0x1b
    80006edc:	06f9e063          	bltu	s3,a5,80006f3c <kinit+0xa4>
    80006ee0:	00008a97          	auipc	s5,0x8
    80006ee4:	120a8a93          	addi	s5,s5,288 # 8000f000 <end>
    80006ee8:	0754ec63          	bltu	s1,s5,80006f60 <kinit+0xc8>
    80006eec:	0734fa63          	bgeu	s1,s3,80006f60 <kinit+0xc8>
    80006ef0:	00088a37          	lui	s4,0x88
    80006ef4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006ef8:	00002917          	auipc	s2,0x2
    80006efc:	ae890913          	addi	s2,s2,-1304 # 800089e0 <kmem>
    80006f00:	00ca1a13          	slli	s4,s4,0xc
    80006f04:	0140006f          	j	80006f18 <kinit+0x80>
    80006f08:	000017b7          	lui	a5,0x1
    80006f0c:	00f484b3          	add	s1,s1,a5
    80006f10:	0554e863          	bltu	s1,s5,80006f60 <kinit+0xc8>
    80006f14:	0534f663          	bgeu	s1,s3,80006f60 <kinit+0xc8>
    80006f18:	00001637          	lui	a2,0x1
    80006f1c:	00100593          	li	a1,1
    80006f20:	00048513          	mv	a0,s1
    80006f24:	00000097          	auipc	ra,0x0
    80006f28:	5e4080e7          	jalr	1508(ra) # 80007508 <__memset>
    80006f2c:	00093783          	ld	a5,0(s2)
    80006f30:	00f4b023          	sd	a5,0(s1)
    80006f34:	00993023          	sd	s1,0(s2)
    80006f38:	fd4498e3          	bne	s1,s4,80006f08 <kinit+0x70>
    80006f3c:	03813083          	ld	ra,56(sp)
    80006f40:	03013403          	ld	s0,48(sp)
    80006f44:	02813483          	ld	s1,40(sp)
    80006f48:	02013903          	ld	s2,32(sp)
    80006f4c:	01813983          	ld	s3,24(sp)
    80006f50:	01013a03          	ld	s4,16(sp)
    80006f54:	00813a83          	ld	s5,8(sp)
    80006f58:	04010113          	addi	sp,sp,64
    80006f5c:	00008067          	ret
    80006f60:	00001517          	auipc	a0,0x1
    80006f64:	7c850513          	addi	a0,a0,1992 # 80008728 <digits+0x18>
    80006f68:	fffff097          	auipc	ra,0xfffff
    80006f6c:	4b4080e7          	jalr	1204(ra) # 8000641c <panic>

0000000080006f70 <freerange>:
    80006f70:	fc010113          	addi	sp,sp,-64
    80006f74:	000017b7          	lui	a5,0x1
    80006f78:	02913423          	sd	s1,40(sp)
    80006f7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006f80:	009504b3          	add	s1,a0,s1
    80006f84:	fffff537          	lui	a0,0xfffff
    80006f88:	02813823          	sd	s0,48(sp)
    80006f8c:	02113c23          	sd	ra,56(sp)
    80006f90:	03213023          	sd	s2,32(sp)
    80006f94:	01313c23          	sd	s3,24(sp)
    80006f98:	01413823          	sd	s4,16(sp)
    80006f9c:	01513423          	sd	s5,8(sp)
    80006fa0:	01613023          	sd	s6,0(sp)
    80006fa4:	04010413          	addi	s0,sp,64
    80006fa8:	00a4f4b3          	and	s1,s1,a0
    80006fac:	00f487b3          	add	a5,s1,a5
    80006fb0:	06f5e463          	bltu	a1,a5,80007018 <freerange+0xa8>
    80006fb4:	00008a97          	auipc	s5,0x8
    80006fb8:	04ca8a93          	addi	s5,s5,76 # 8000f000 <end>
    80006fbc:	0954e263          	bltu	s1,s5,80007040 <freerange+0xd0>
    80006fc0:	01100993          	li	s3,17
    80006fc4:	01b99993          	slli	s3,s3,0x1b
    80006fc8:	0734fc63          	bgeu	s1,s3,80007040 <freerange+0xd0>
    80006fcc:	00058a13          	mv	s4,a1
    80006fd0:	00002917          	auipc	s2,0x2
    80006fd4:	a1090913          	addi	s2,s2,-1520 # 800089e0 <kmem>
    80006fd8:	00002b37          	lui	s6,0x2
    80006fdc:	0140006f          	j	80006ff0 <freerange+0x80>
    80006fe0:	000017b7          	lui	a5,0x1
    80006fe4:	00f484b3          	add	s1,s1,a5
    80006fe8:	0554ec63          	bltu	s1,s5,80007040 <freerange+0xd0>
    80006fec:	0534fa63          	bgeu	s1,s3,80007040 <freerange+0xd0>
    80006ff0:	00001637          	lui	a2,0x1
    80006ff4:	00100593          	li	a1,1
    80006ff8:	00048513          	mv	a0,s1
    80006ffc:	00000097          	auipc	ra,0x0
    80007000:	50c080e7          	jalr	1292(ra) # 80007508 <__memset>
    80007004:	00093703          	ld	a4,0(s2)
    80007008:	016487b3          	add	a5,s1,s6
    8000700c:	00e4b023          	sd	a4,0(s1)
    80007010:	00993023          	sd	s1,0(s2)
    80007014:	fcfa76e3          	bgeu	s4,a5,80006fe0 <freerange+0x70>
    80007018:	03813083          	ld	ra,56(sp)
    8000701c:	03013403          	ld	s0,48(sp)
    80007020:	02813483          	ld	s1,40(sp)
    80007024:	02013903          	ld	s2,32(sp)
    80007028:	01813983          	ld	s3,24(sp)
    8000702c:	01013a03          	ld	s4,16(sp)
    80007030:	00813a83          	ld	s5,8(sp)
    80007034:	00013b03          	ld	s6,0(sp)
    80007038:	04010113          	addi	sp,sp,64
    8000703c:	00008067          	ret
    80007040:	00001517          	auipc	a0,0x1
    80007044:	6e850513          	addi	a0,a0,1768 # 80008728 <digits+0x18>
    80007048:	fffff097          	auipc	ra,0xfffff
    8000704c:	3d4080e7          	jalr	980(ra) # 8000641c <panic>

0000000080007050 <kfree>:
    80007050:	fe010113          	addi	sp,sp,-32
    80007054:	00813823          	sd	s0,16(sp)
    80007058:	00113c23          	sd	ra,24(sp)
    8000705c:	00913423          	sd	s1,8(sp)
    80007060:	02010413          	addi	s0,sp,32
    80007064:	03451793          	slli	a5,a0,0x34
    80007068:	04079c63          	bnez	a5,800070c0 <kfree+0x70>
    8000706c:	00008797          	auipc	a5,0x8
    80007070:	f9478793          	addi	a5,a5,-108 # 8000f000 <end>
    80007074:	00050493          	mv	s1,a0
    80007078:	04f56463          	bltu	a0,a5,800070c0 <kfree+0x70>
    8000707c:	01100793          	li	a5,17
    80007080:	01b79793          	slli	a5,a5,0x1b
    80007084:	02f57e63          	bgeu	a0,a5,800070c0 <kfree+0x70>
    80007088:	00001637          	lui	a2,0x1
    8000708c:	00100593          	li	a1,1
    80007090:	00000097          	auipc	ra,0x0
    80007094:	478080e7          	jalr	1144(ra) # 80007508 <__memset>
    80007098:	00002797          	auipc	a5,0x2
    8000709c:	94878793          	addi	a5,a5,-1720 # 800089e0 <kmem>
    800070a0:	0007b703          	ld	a4,0(a5)
    800070a4:	01813083          	ld	ra,24(sp)
    800070a8:	01013403          	ld	s0,16(sp)
    800070ac:	00e4b023          	sd	a4,0(s1)
    800070b0:	0097b023          	sd	s1,0(a5)
    800070b4:	00813483          	ld	s1,8(sp)
    800070b8:	02010113          	addi	sp,sp,32
    800070bc:	00008067          	ret
    800070c0:	00001517          	auipc	a0,0x1
    800070c4:	66850513          	addi	a0,a0,1640 # 80008728 <digits+0x18>
    800070c8:	fffff097          	auipc	ra,0xfffff
    800070cc:	354080e7          	jalr	852(ra) # 8000641c <panic>

00000000800070d0 <kalloc>:
    800070d0:	fe010113          	addi	sp,sp,-32
    800070d4:	00813823          	sd	s0,16(sp)
    800070d8:	00913423          	sd	s1,8(sp)
    800070dc:	00113c23          	sd	ra,24(sp)
    800070e0:	02010413          	addi	s0,sp,32
    800070e4:	00002797          	auipc	a5,0x2
    800070e8:	8fc78793          	addi	a5,a5,-1796 # 800089e0 <kmem>
    800070ec:	0007b483          	ld	s1,0(a5)
    800070f0:	02048063          	beqz	s1,80007110 <kalloc+0x40>
    800070f4:	0004b703          	ld	a4,0(s1)
    800070f8:	00001637          	lui	a2,0x1
    800070fc:	00500593          	li	a1,5
    80007100:	00048513          	mv	a0,s1
    80007104:	00e7b023          	sd	a4,0(a5)
    80007108:	00000097          	auipc	ra,0x0
    8000710c:	400080e7          	jalr	1024(ra) # 80007508 <__memset>
    80007110:	01813083          	ld	ra,24(sp)
    80007114:	01013403          	ld	s0,16(sp)
    80007118:	00048513          	mv	a0,s1
    8000711c:	00813483          	ld	s1,8(sp)
    80007120:	02010113          	addi	sp,sp,32
    80007124:	00008067          	ret

0000000080007128 <initlock>:
    80007128:	ff010113          	addi	sp,sp,-16
    8000712c:	00813423          	sd	s0,8(sp)
    80007130:	01010413          	addi	s0,sp,16
    80007134:	00813403          	ld	s0,8(sp)
    80007138:	00b53423          	sd	a1,8(a0)
    8000713c:	00052023          	sw	zero,0(a0)
    80007140:	00053823          	sd	zero,16(a0)
    80007144:	01010113          	addi	sp,sp,16
    80007148:	00008067          	ret

000000008000714c <acquire>:
    8000714c:	fe010113          	addi	sp,sp,-32
    80007150:	00813823          	sd	s0,16(sp)
    80007154:	00913423          	sd	s1,8(sp)
    80007158:	00113c23          	sd	ra,24(sp)
    8000715c:	01213023          	sd	s2,0(sp)
    80007160:	02010413          	addi	s0,sp,32
    80007164:	00050493          	mv	s1,a0
    80007168:	10002973          	csrr	s2,sstatus
    8000716c:	100027f3          	csrr	a5,sstatus
    80007170:	ffd7f793          	andi	a5,a5,-3
    80007174:	10079073          	csrw	sstatus,a5
    80007178:	fffff097          	auipc	ra,0xfffff
    8000717c:	8e8080e7          	jalr	-1816(ra) # 80005a60 <mycpu>
    80007180:	07852783          	lw	a5,120(a0)
    80007184:	06078e63          	beqz	a5,80007200 <acquire+0xb4>
    80007188:	fffff097          	auipc	ra,0xfffff
    8000718c:	8d8080e7          	jalr	-1832(ra) # 80005a60 <mycpu>
    80007190:	07852783          	lw	a5,120(a0)
    80007194:	0004a703          	lw	a4,0(s1)
    80007198:	0017879b          	addiw	a5,a5,1
    8000719c:	06f52c23          	sw	a5,120(a0)
    800071a0:	04071063          	bnez	a4,800071e0 <acquire+0x94>
    800071a4:	00100713          	li	a4,1
    800071a8:	00070793          	mv	a5,a4
    800071ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800071b0:	0007879b          	sext.w	a5,a5
    800071b4:	fe079ae3          	bnez	a5,800071a8 <acquire+0x5c>
    800071b8:	0ff0000f          	fence
    800071bc:	fffff097          	auipc	ra,0xfffff
    800071c0:	8a4080e7          	jalr	-1884(ra) # 80005a60 <mycpu>
    800071c4:	01813083          	ld	ra,24(sp)
    800071c8:	01013403          	ld	s0,16(sp)
    800071cc:	00a4b823          	sd	a0,16(s1)
    800071d0:	00013903          	ld	s2,0(sp)
    800071d4:	00813483          	ld	s1,8(sp)
    800071d8:	02010113          	addi	sp,sp,32
    800071dc:	00008067          	ret
    800071e0:	0104b903          	ld	s2,16(s1)
    800071e4:	fffff097          	auipc	ra,0xfffff
    800071e8:	87c080e7          	jalr	-1924(ra) # 80005a60 <mycpu>
    800071ec:	faa91ce3          	bne	s2,a0,800071a4 <acquire+0x58>
    800071f0:	00001517          	auipc	a0,0x1
    800071f4:	54050513          	addi	a0,a0,1344 # 80008730 <digits+0x20>
    800071f8:	fffff097          	auipc	ra,0xfffff
    800071fc:	224080e7          	jalr	548(ra) # 8000641c <panic>
    80007200:	00195913          	srli	s2,s2,0x1
    80007204:	fffff097          	auipc	ra,0xfffff
    80007208:	85c080e7          	jalr	-1956(ra) # 80005a60 <mycpu>
    8000720c:	00197913          	andi	s2,s2,1
    80007210:	07252e23          	sw	s2,124(a0)
    80007214:	f75ff06f          	j	80007188 <acquire+0x3c>

0000000080007218 <release>:
    80007218:	fe010113          	addi	sp,sp,-32
    8000721c:	00813823          	sd	s0,16(sp)
    80007220:	00113c23          	sd	ra,24(sp)
    80007224:	00913423          	sd	s1,8(sp)
    80007228:	01213023          	sd	s2,0(sp)
    8000722c:	02010413          	addi	s0,sp,32
    80007230:	00052783          	lw	a5,0(a0)
    80007234:	00079a63          	bnez	a5,80007248 <release+0x30>
    80007238:	00001517          	auipc	a0,0x1
    8000723c:	50050513          	addi	a0,a0,1280 # 80008738 <digits+0x28>
    80007240:	fffff097          	auipc	ra,0xfffff
    80007244:	1dc080e7          	jalr	476(ra) # 8000641c <panic>
    80007248:	01053903          	ld	s2,16(a0)
    8000724c:	00050493          	mv	s1,a0
    80007250:	fffff097          	auipc	ra,0xfffff
    80007254:	810080e7          	jalr	-2032(ra) # 80005a60 <mycpu>
    80007258:	fea910e3          	bne	s2,a0,80007238 <release+0x20>
    8000725c:	0004b823          	sd	zero,16(s1)
    80007260:	0ff0000f          	fence
    80007264:	0f50000f          	fence	iorw,ow
    80007268:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000726c:	ffffe097          	auipc	ra,0xffffe
    80007270:	7f4080e7          	jalr	2036(ra) # 80005a60 <mycpu>
    80007274:	100027f3          	csrr	a5,sstatus
    80007278:	0027f793          	andi	a5,a5,2
    8000727c:	04079a63          	bnez	a5,800072d0 <release+0xb8>
    80007280:	07852783          	lw	a5,120(a0)
    80007284:	02f05e63          	blez	a5,800072c0 <release+0xa8>
    80007288:	fff7871b          	addiw	a4,a5,-1
    8000728c:	06e52c23          	sw	a4,120(a0)
    80007290:	00071c63          	bnez	a4,800072a8 <release+0x90>
    80007294:	07c52783          	lw	a5,124(a0)
    80007298:	00078863          	beqz	a5,800072a8 <release+0x90>
    8000729c:	100027f3          	csrr	a5,sstatus
    800072a0:	0027e793          	ori	a5,a5,2
    800072a4:	10079073          	csrw	sstatus,a5
    800072a8:	01813083          	ld	ra,24(sp)
    800072ac:	01013403          	ld	s0,16(sp)
    800072b0:	00813483          	ld	s1,8(sp)
    800072b4:	00013903          	ld	s2,0(sp)
    800072b8:	02010113          	addi	sp,sp,32
    800072bc:	00008067          	ret
    800072c0:	00001517          	auipc	a0,0x1
    800072c4:	49850513          	addi	a0,a0,1176 # 80008758 <digits+0x48>
    800072c8:	fffff097          	auipc	ra,0xfffff
    800072cc:	154080e7          	jalr	340(ra) # 8000641c <panic>
    800072d0:	00001517          	auipc	a0,0x1
    800072d4:	47050513          	addi	a0,a0,1136 # 80008740 <digits+0x30>
    800072d8:	fffff097          	auipc	ra,0xfffff
    800072dc:	144080e7          	jalr	324(ra) # 8000641c <panic>

00000000800072e0 <holding>:
    800072e0:	00052783          	lw	a5,0(a0)
    800072e4:	00079663          	bnez	a5,800072f0 <holding+0x10>
    800072e8:	00000513          	li	a0,0
    800072ec:	00008067          	ret
    800072f0:	fe010113          	addi	sp,sp,-32
    800072f4:	00813823          	sd	s0,16(sp)
    800072f8:	00913423          	sd	s1,8(sp)
    800072fc:	00113c23          	sd	ra,24(sp)
    80007300:	02010413          	addi	s0,sp,32
    80007304:	01053483          	ld	s1,16(a0)
    80007308:	ffffe097          	auipc	ra,0xffffe
    8000730c:	758080e7          	jalr	1880(ra) # 80005a60 <mycpu>
    80007310:	01813083          	ld	ra,24(sp)
    80007314:	01013403          	ld	s0,16(sp)
    80007318:	40a48533          	sub	a0,s1,a0
    8000731c:	00153513          	seqz	a0,a0
    80007320:	00813483          	ld	s1,8(sp)
    80007324:	02010113          	addi	sp,sp,32
    80007328:	00008067          	ret

000000008000732c <push_off>:
    8000732c:	fe010113          	addi	sp,sp,-32
    80007330:	00813823          	sd	s0,16(sp)
    80007334:	00113c23          	sd	ra,24(sp)
    80007338:	00913423          	sd	s1,8(sp)
    8000733c:	02010413          	addi	s0,sp,32
    80007340:	100024f3          	csrr	s1,sstatus
    80007344:	100027f3          	csrr	a5,sstatus
    80007348:	ffd7f793          	andi	a5,a5,-3
    8000734c:	10079073          	csrw	sstatus,a5
    80007350:	ffffe097          	auipc	ra,0xffffe
    80007354:	710080e7          	jalr	1808(ra) # 80005a60 <mycpu>
    80007358:	07852783          	lw	a5,120(a0)
    8000735c:	02078663          	beqz	a5,80007388 <push_off+0x5c>
    80007360:	ffffe097          	auipc	ra,0xffffe
    80007364:	700080e7          	jalr	1792(ra) # 80005a60 <mycpu>
    80007368:	07852783          	lw	a5,120(a0)
    8000736c:	01813083          	ld	ra,24(sp)
    80007370:	01013403          	ld	s0,16(sp)
    80007374:	0017879b          	addiw	a5,a5,1
    80007378:	06f52c23          	sw	a5,120(a0)
    8000737c:	00813483          	ld	s1,8(sp)
    80007380:	02010113          	addi	sp,sp,32
    80007384:	00008067          	ret
    80007388:	0014d493          	srli	s1,s1,0x1
    8000738c:	ffffe097          	auipc	ra,0xffffe
    80007390:	6d4080e7          	jalr	1748(ra) # 80005a60 <mycpu>
    80007394:	0014f493          	andi	s1,s1,1
    80007398:	06952e23          	sw	s1,124(a0)
    8000739c:	fc5ff06f          	j	80007360 <push_off+0x34>

00000000800073a0 <pop_off>:
    800073a0:	ff010113          	addi	sp,sp,-16
    800073a4:	00813023          	sd	s0,0(sp)
    800073a8:	00113423          	sd	ra,8(sp)
    800073ac:	01010413          	addi	s0,sp,16
    800073b0:	ffffe097          	auipc	ra,0xffffe
    800073b4:	6b0080e7          	jalr	1712(ra) # 80005a60 <mycpu>
    800073b8:	100027f3          	csrr	a5,sstatus
    800073bc:	0027f793          	andi	a5,a5,2
    800073c0:	04079663          	bnez	a5,8000740c <pop_off+0x6c>
    800073c4:	07852783          	lw	a5,120(a0)
    800073c8:	02f05a63          	blez	a5,800073fc <pop_off+0x5c>
    800073cc:	fff7871b          	addiw	a4,a5,-1
    800073d0:	06e52c23          	sw	a4,120(a0)
    800073d4:	00071c63          	bnez	a4,800073ec <pop_off+0x4c>
    800073d8:	07c52783          	lw	a5,124(a0)
    800073dc:	00078863          	beqz	a5,800073ec <pop_off+0x4c>
    800073e0:	100027f3          	csrr	a5,sstatus
    800073e4:	0027e793          	ori	a5,a5,2
    800073e8:	10079073          	csrw	sstatus,a5
    800073ec:	00813083          	ld	ra,8(sp)
    800073f0:	00013403          	ld	s0,0(sp)
    800073f4:	01010113          	addi	sp,sp,16
    800073f8:	00008067          	ret
    800073fc:	00001517          	auipc	a0,0x1
    80007400:	35c50513          	addi	a0,a0,860 # 80008758 <digits+0x48>
    80007404:	fffff097          	auipc	ra,0xfffff
    80007408:	018080e7          	jalr	24(ra) # 8000641c <panic>
    8000740c:	00001517          	auipc	a0,0x1
    80007410:	33450513          	addi	a0,a0,820 # 80008740 <digits+0x30>
    80007414:	fffff097          	auipc	ra,0xfffff
    80007418:	008080e7          	jalr	8(ra) # 8000641c <panic>

000000008000741c <push_on>:
    8000741c:	fe010113          	addi	sp,sp,-32
    80007420:	00813823          	sd	s0,16(sp)
    80007424:	00113c23          	sd	ra,24(sp)
    80007428:	00913423          	sd	s1,8(sp)
    8000742c:	02010413          	addi	s0,sp,32
    80007430:	100024f3          	csrr	s1,sstatus
    80007434:	100027f3          	csrr	a5,sstatus
    80007438:	0027e793          	ori	a5,a5,2
    8000743c:	10079073          	csrw	sstatus,a5
    80007440:	ffffe097          	auipc	ra,0xffffe
    80007444:	620080e7          	jalr	1568(ra) # 80005a60 <mycpu>
    80007448:	07852783          	lw	a5,120(a0)
    8000744c:	02078663          	beqz	a5,80007478 <push_on+0x5c>
    80007450:	ffffe097          	auipc	ra,0xffffe
    80007454:	610080e7          	jalr	1552(ra) # 80005a60 <mycpu>
    80007458:	07852783          	lw	a5,120(a0)
    8000745c:	01813083          	ld	ra,24(sp)
    80007460:	01013403          	ld	s0,16(sp)
    80007464:	0017879b          	addiw	a5,a5,1
    80007468:	06f52c23          	sw	a5,120(a0)
    8000746c:	00813483          	ld	s1,8(sp)
    80007470:	02010113          	addi	sp,sp,32
    80007474:	00008067          	ret
    80007478:	0014d493          	srli	s1,s1,0x1
    8000747c:	ffffe097          	auipc	ra,0xffffe
    80007480:	5e4080e7          	jalr	1508(ra) # 80005a60 <mycpu>
    80007484:	0014f493          	andi	s1,s1,1
    80007488:	06952e23          	sw	s1,124(a0)
    8000748c:	fc5ff06f          	j	80007450 <push_on+0x34>

0000000080007490 <pop_on>:
    80007490:	ff010113          	addi	sp,sp,-16
    80007494:	00813023          	sd	s0,0(sp)
    80007498:	00113423          	sd	ra,8(sp)
    8000749c:	01010413          	addi	s0,sp,16
    800074a0:	ffffe097          	auipc	ra,0xffffe
    800074a4:	5c0080e7          	jalr	1472(ra) # 80005a60 <mycpu>
    800074a8:	100027f3          	csrr	a5,sstatus
    800074ac:	0027f793          	andi	a5,a5,2
    800074b0:	04078463          	beqz	a5,800074f8 <pop_on+0x68>
    800074b4:	07852783          	lw	a5,120(a0)
    800074b8:	02f05863          	blez	a5,800074e8 <pop_on+0x58>
    800074bc:	fff7879b          	addiw	a5,a5,-1
    800074c0:	06f52c23          	sw	a5,120(a0)
    800074c4:	07853783          	ld	a5,120(a0)
    800074c8:	00079863          	bnez	a5,800074d8 <pop_on+0x48>
    800074cc:	100027f3          	csrr	a5,sstatus
    800074d0:	ffd7f793          	andi	a5,a5,-3
    800074d4:	10079073          	csrw	sstatus,a5
    800074d8:	00813083          	ld	ra,8(sp)
    800074dc:	00013403          	ld	s0,0(sp)
    800074e0:	01010113          	addi	sp,sp,16
    800074e4:	00008067          	ret
    800074e8:	00001517          	auipc	a0,0x1
    800074ec:	29850513          	addi	a0,a0,664 # 80008780 <digits+0x70>
    800074f0:	fffff097          	auipc	ra,0xfffff
    800074f4:	f2c080e7          	jalr	-212(ra) # 8000641c <panic>
    800074f8:	00001517          	auipc	a0,0x1
    800074fc:	26850513          	addi	a0,a0,616 # 80008760 <digits+0x50>
    80007500:	fffff097          	auipc	ra,0xfffff
    80007504:	f1c080e7          	jalr	-228(ra) # 8000641c <panic>

0000000080007508 <__memset>:
    80007508:	ff010113          	addi	sp,sp,-16
    8000750c:	00813423          	sd	s0,8(sp)
    80007510:	01010413          	addi	s0,sp,16
    80007514:	1a060e63          	beqz	a2,800076d0 <__memset+0x1c8>
    80007518:	40a007b3          	neg	a5,a0
    8000751c:	0077f793          	andi	a5,a5,7
    80007520:	00778693          	addi	a3,a5,7
    80007524:	00b00813          	li	a6,11
    80007528:	0ff5f593          	andi	a1,a1,255
    8000752c:	fff6071b          	addiw	a4,a2,-1
    80007530:	1b06e663          	bltu	a3,a6,800076dc <__memset+0x1d4>
    80007534:	1cd76463          	bltu	a4,a3,800076fc <__memset+0x1f4>
    80007538:	1a078e63          	beqz	a5,800076f4 <__memset+0x1ec>
    8000753c:	00b50023          	sb	a1,0(a0)
    80007540:	00100713          	li	a4,1
    80007544:	1ae78463          	beq	a5,a4,800076ec <__memset+0x1e4>
    80007548:	00b500a3          	sb	a1,1(a0)
    8000754c:	00200713          	li	a4,2
    80007550:	1ae78a63          	beq	a5,a4,80007704 <__memset+0x1fc>
    80007554:	00b50123          	sb	a1,2(a0)
    80007558:	00300713          	li	a4,3
    8000755c:	18e78463          	beq	a5,a4,800076e4 <__memset+0x1dc>
    80007560:	00b501a3          	sb	a1,3(a0)
    80007564:	00400713          	li	a4,4
    80007568:	1ae78263          	beq	a5,a4,8000770c <__memset+0x204>
    8000756c:	00b50223          	sb	a1,4(a0)
    80007570:	00500713          	li	a4,5
    80007574:	1ae78063          	beq	a5,a4,80007714 <__memset+0x20c>
    80007578:	00b502a3          	sb	a1,5(a0)
    8000757c:	00700713          	li	a4,7
    80007580:	18e79e63          	bne	a5,a4,8000771c <__memset+0x214>
    80007584:	00b50323          	sb	a1,6(a0)
    80007588:	00700e93          	li	t4,7
    8000758c:	00859713          	slli	a4,a1,0x8
    80007590:	00e5e733          	or	a4,a1,a4
    80007594:	01059e13          	slli	t3,a1,0x10
    80007598:	01c76e33          	or	t3,a4,t3
    8000759c:	01859313          	slli	t1,a1,0x18
    800075a0:	006e6333          	or	t1,t3,t1
    800075a4:	02059893          	slli	a7,a1,0x20
    800075a8:	40f60e3b          	subw	t3,a2,a5
    800075ac:	011368b3          	or	a7,t1,a7
    800075b0:	02859813          	slli	a6,a1,0x28
    800075b4:	0108e833          	or	a6,a7,a6
    800075b8:	03059693          	slli	a3,a1,0x30
    800075bc:	003e589b          	srliw	a7,t3,0x3
    800075c0:	00d866b3          	or	a3,a6,a3
    800075c4:	03859713          	slli	a4,a1,0x38
    800075c8:	00389813          	slli	a6,a7,0x3
    800075cc:	00f507b3          	add	a5,a0,a5
    800075d0:	00e6e733          	or	a4,a3,a4
    800075d4:	000e089b          	sext.w	a7,t3
    800075d8:	00f806b3          	add	a3,a6,a5
    800075dc:	00e7b023          	sd	a4,0(a5)
    800075e0:	00878793          	addi	a5,a5,8
    800075e4:	fed79ce3          	bne	a5,a3,800075dc <__memset+0xd4>
    800075e8:	ff8e7793          	andi	a5,t3,-8
    800075ec:	0007871b          	sext.w	a4,a5
    800075f0:	01d787bb          	addw	a5,a5,t4
    800075f4:	0ce88e63          	beq	a7,a4,800076d0 <__memset+0x1c8>
    800075f8:	00f50733          	add	a4,a0,a5
    800075fc:	00b70023          	sb	a1,0(a4)
    80007600:	0017871b          	addiw	a4,a5,1
    80007604:	0cc77663          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007608:	00e50733          	add	a4,a0,a4
    8000760c:	00b70023          	sb	a1,0(a4)
    80007610:	0027871b          	addiw	a4,a5,2
    80007614:	0ac77e63          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007618:	00e50733          	add	a4,a0,a4
    8000761c:	00b70023          	sb	a1,0(a4)
    80007620:	0037871b          	addiw	a4,a5,3
    80007624:	0ac77663          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007628:	00e50733          	add	a4,a0,a4
    8000762c:	00b70023          	sb	a1,0(a4)
    80007630:	0047871b          	addiw	a4,a5,4
    80007634:	08c77e63          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007638:	00e50733          	add	a4,a0,a4
    8000763c:	00b70023          	sb	a1,0(a4)
    80007640:	0057871b          	addiw	a4,a5,5
    80007644:	08c77663          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007648:	00e50733          	add	a4,a0,a4
    8000764c:	00b70023          	sb	a1,0(a4)
    80007650:	0067871b          	addiw	a4,a5,6
    80007654:	06c77e63          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007658:	00e50733          	add	a4,a0,a4
    8000765c:	00b70023          	sb	a1,0(a4)
    80007660:	0077871b          	addiw	a4,a5,7
    80007664:	06c77663          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007668:	00e50733          	add	a4,a0,a4
    8000766c:	00b70023          	sb	a1,0(a4)
    80007670:	0087871b          	addiw	a4,a5,8
    80007674:	04c77e63          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007678:	00e50733          	add	a4,a0,a4
    8000767c:	00b70023          	sb	a1,0(a4)
    80007680:	0097871b          	addiw	a4,a5,9
    80007684:	04c77663          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007688:	00e50733          	add	a4,a0,a4
    8000768c:	00b70023          	sb	a1,0(a4)
    80007690:	00a7871b          	addiw	a4,a5,10
    80007694:	02c77e63          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007698:	00e50733          	add	a4,a0,a4
    8000769c:	00b70023          	sb	a1,0(a4)
    800076a0:	00b7871b          	addiw	a4,a5,11
    800076a4:	02c77663          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    800076a8:	00e50733          	add	a4,a0,a4
    800076ac:	00b70023          	sb	a1,0(a4)
    800076b0:	00c7871b          	addiw	a4,a5,12
    800076b4:	00c77e63          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    800076b8:	00e50733          	add	a4,a0,a4
    800076bc:	00b70023          	sb	a1,0(a4)
    800076c0:	00d7879b          	addiw	a5,a5,13
    800076c4:	00c7f663          	bgeu	a5,a2,800076d0 <__memset+0x1c8>
    800076c8:	00f507b3          	add	a5,a0,a5
    800076cc:	00b78023          	sb	a1,0(a5)
    800076d0:	00813403          	ld	s0,8(sp)
    800076d4:	01010113          	addi	sp,sp,16
    800076d8:	00008067          	ret
    800076dc:	00b00693          	li	a3,11
    800076e0:	e55ff06f          	j	80007534 <__memset+0x2c>
    800076e4:	00300e93          	li	t4,3
    800076e8:	ea5ff06f          	j	8000758c <__memset+0x84>
    800076ec:	00100e93          	li	t4,1
    800076f0:	e9dff06f          	j	8000758c <__memset+0x84>
    800076f4:	00000e93          	li	t4,0
    800076f8:	e95ff06f          	j	8000758c <__memset+0x84>
    800076fc:	00000793          	li	a5,0
    80007700:	ef9ff06f          	j	800075f8 <__memset+0xf0>
    80007704:	00200e93          	li	t4,2
    80007708:	e85ff06f          	j	8000758c <__memset+0x84>
    8000770c:	00400e93          	li	t4,4
    80007710:	e7dff06f          	j	8000758c <__memset+0x84>
    80007714:	00500e93          	li	t4,5
    80007718:	e75ff06f          	j	8000758c <__memset+0x84>
    8000771c:	00600e93          	li	t4,6
    80007720:	e6dff06f          	j	8000758c <__memset+0x84>

0000000080007724 <__memmove>:
    80007724:	ff010113          	addi	sp,sp,-16
    80007728:	00813423          	sd	s0,8(sp)
    8000772c:	01010413          	addi	s0,sp,16
    80007730:	0e060863          	beqz	a2,80007820 <__memmove+0xfc>
    80007734:	fff6069b          	addiw	a3,a2,-1
    80007738:	0006881b          	sext.w	a6,a3
    8000773c:	0ea5e863          	bltu	a1,a0,8000782c <__memmove+0x108>
    80007740:	00758713          	addi	a4,a1,7
    80007744:	00a5e7b3          	or	a5,a1,a0
    80007748:	40a70733          	sub	a4,a4,a0
    8000774c:	0077f793          	andi	a5,a5,7
    80007750:	00f73713          	sltiu	a4,a4,15
    80007754:	00174713          	xori	a4,a4,1
    80007758:	0017b793          	seqz	a5,a5
    8000775c:	00e7f7b3          	and	a5,a5,a4
    80007760:	10078863          	beqz	a5,80007870 <__memmove+0x14c>
    80007764:	00900793          	li	a5,9
    80007768:	1107f463          	bgeu	a5,a6,80007870 <__memmove+0x14c>
    8000776c:	0036581b          	srliw	a6,a2,0x3
    80007770:	fff8081b          	addiw	a6,a6,-1
    80007774:	02081813          	slli	a6,a6,0x20
    80007778:	01d85893          	srli	a7,a6,0x1d
    8000777c:	00858813          	addi	a6,a1,8
    80007780:	00058793          	mv	a5,a1
    80007784:	00050713          	mv	a4,a0
    80007788:	01088833          	add	a6,a7,a6
    8000778c:	0007b883          	ld	a7,0(a5)
    80007790:	00878793          	addi	a5,a5,8
    80007794:	00870713          	addi	a4,a4,8
    80007798:	ff173c23          	sd	a7,-8(a4)
    8000779c:	ff0798e3          	bne	a5,a6,8000778c <__memmove+0x68>
    800077a0:	ff867713          	andi	a4,a2,-8
    800077a4:	02071793          	slli	a5,a4,0x20
    800077a8:	0207d793          	srli	a5,a5,0x20
    800077ac:	00f585b3          	add	a1,a1,a5
    800077b0:	40e686bb          	subw	a3,a3,a4
    800077b4:	00f507b3          	add	a5,a0,a5
    800077b8:	06e60463          	beq	a2,a4,80007820 <__memmove+0xfc>
    800077bc:	0005c703          	lbu	a4,0(a1)
    800077c0:	00e78023          	sb	a4,0(a5)
    800077c4:	04068e63          	beqz	a3,80007820 <__memmove+0xfc>
    800077c8:	0015c603          	lbu	a2,1(a1)
    800077cc:	00100713          	li	a4,1
    800077d0:	00c780a3          	sb	a2,1(a5)
    800077d4:	04e68663          	beq	a3,a4,80007820 <__memmove+0xfc>
    800077d8:	0025c603          	lbu	a2,2(a1)
    800077dc:	00200713          	li	a4,2
    800077e0:	00c78123          	sb	a2,2(a5)
    800077e4:	02e68e63          	beq	a3,a4,80007820 <__memmove+0xfc>
    800077e8:	0035c603          	lbu	a2,3(a1)
    800077ec:	00300713          	li	a4,3
    800077f0:	00c781a3          	sb	a2,3(a5)
    800077f4:	02e68663          	beq	a3,a4,80007820 <__memmove+0xfc>
    800077f8:	0045c603          	lbu	a2,4(a1)
    800077fc:	00400713          	li	a4,4
    80007800:	00c78223          	sb	a2,4(a5)
    80007804:	00e68e63          	beq	a3,a4,80007820 <__memmove+0xfc>
    80007808:	0055c603          	lbu	a2,5(a1)
    8000780c:	00500713          	li	a4,5
    80007810:	00c782a3          	sb	a2,5(a5)
    80007814:	00e68663          	beq	a3,a4,80007820 <__memmove+0xfc>
    80007818:	0065c703          	lbu	a4,6(a1)
    8000781c:	00e78323          	sb	a4,6(a5)
    80007820:	00813403          	ld	s0,8(sp)
    80007824:	01010113          	addi	sp,sp,16
    80007828:	00008067          	ret
    8000782c:	02061713          	slli	a4,a2,0x20
    80007830:	02075713          	srli	a4,a4,0x20
    80007834:	00e587b3          	add	a5,a1,a4
    80007838:	f0f574e3          	bgeu	a0,a5,80007740 <__memmove+0x1c>
    8000783c:	02069613          	slli	a2,a3,0x20
    80007840:	02065613          	srli	a2,a2,0x20
    80007844:	fff64613          	not	a2,a2
    80007848:	00e50733          	add	a4,a0,a4
    8000784c:	00c78633          	add	a2,a5,a2
    80007850:	fff7c683          	lbu	a3,-1(a5)
    80007854:	fff78793          	addi	a5,a5,-1
    80007858:	fff70713          	addi	a4,a4,-1
    8000785c:	00d70023          	sb	a3,0(a4)
    80007860:	fec798e3          	bne	a5,a2,80007850 <__memmove+0x12c>
    80007864:	00813403          	ld	s0,8(sp)
    80007868:	01010113          	addi	sp,sp,16
    8000786c:	00008067          	ret
    80007870:	02069713          	slli	a4,a3,0x20
    80007874:	02075713          	srli	a4,a4,0x20
    80007878:	00170713          	addi	a4,a4,1
    8000787c:	00e50733          	add	a4,a0,a4
    80007880:	00050793          	mv	a5,a0
    80007884:	0005c683          	lbu	a3,0(a1)
    80007888:	00178793          	addi	a5,a5,1
    8000788c:	00158593          	addi	a1,a1,1
    80007890:	fed78fa3          	sb	a3,-1(a5)
    80007894:	fee798e3          	bne	a5,a4,80007884 <__memmove+0x160>
    80007898:	f89ff06f          	j	80007820 <__memmove+0xfc>
	...

Disassembly of section .user:

000000008000b750 <copy_and_swap-0x8b0>:
	...

000000008000c000 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000c000:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000c004:	00b29a63          	bne	t0,a1,8000c018 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000c008:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000c00c:	fe029ae3          	bnez	t0,8000c000 <copy_and_swap>
    li a0, 0               # Set return to success.
    8000c010:	00000513          	li	a0,0
    jr ra                  # Return.
    8000c014:	00008067          	ret

000000008000c018 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000c018:	00100513          	li	a0,1
    8000c01c:	00008067          	ret

000000008000c020 <_Z9mem_allocm>:
//

#include "../../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    8000c020:	ff010113          	addi	sp,sp,-16
    8000c024:	00813423          	sd	s0,8(sp)
    8000c028:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8000c02c:	03f50513          	addi	a0,a0,63
    8000c030:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000c034:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    8000c038:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    8000c03c:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    8000c040:	00050513          	mv	a0,a0

    if(allocatedAddr == 0)
        return nullptr;

    return (void*)allocatedAddr;
}
    8000c044:	00813403          	ld	s0,8(sp)
    8000c048:	01010113          	addi	sp,sp,16
    8000c04c:	00008067          	ret

000000008000c050 <_Z8mem_freePv>:

int mem_free(void* p)
{
    8000c050:	ff010113          	addi	sp,sp,-16
    8000c054:	00813423          	sd	s0,8(sp)
    8000c058:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    8000c05c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    8000c060:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000c064:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c068:	00050513          	mv	a0,a0

    return result;
}
    8000c06c:	0005051b          	sext.w	a0,a0
    8000c070:	00813403          	ld	s0,8(sp)
    8000c074:	01010113          	addi	sp,sp,16
    8000c078:	00008067          	ret

000000008000c07c <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    8000c07c:	fd010113          	addi	sp,sp,-48
    8000c080:	02113423          	sd	ra,40(sp)
    8000c084:	02813023          	sd	s0,32(sp)
    8000c088:	00913c23          	sd	s1,24(sp)
    8000c08c:	01213823          	sd	s2,16(sp)
    8000c090:	01313423          	sd	s3,8(sp)
    8000c094:	03010413          	addi	s0,sp,48
    8000c098:	00050493          	mv	s1,a0
    8000c09c:	00058913          	mv	s2,a1
    8000c0a0:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000c0a4:	00001537          	lui	a0,0x1
    8000c0a8:	00000097          	auipc	ra,0x0
    8000c0ac:	f78080e7          	jalr	-136(ra) # 8000c020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == nullptr)
    8000c0b0:	04050a63          	beqz	a0,8000c104 <_Z13thread_createPP7_threadPFvPvES2_+0x88>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000c0b4:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    8000c0b8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    8000c0bc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8000c0c0:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000c0c4:	01100793          	li	a5,17
    8000c0c8:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    8000c0cc:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c0d0:	00050493          	mv	s1,a0

    if(result != 0)
    8000c0d4:	02049263          	bnez	s1,8000c0f8 <_Z13thread_createPP7_threadPFvPvES2_+0x7c>
    {
        mem_free(stack_space);
    }

    return result;
    8000c0d8:	0004851b          	sext.w	a0,s1
}
    8000c0dc:	02813083          	ld	ra,40(sp)
    8000c0e0:	02013403          	ld	s0,32(sp)
    8000c0e4:	01813483          	ld	s1,24(sp)
    8000c0e8:	01013903          	ld	s2,16(sp)
    8000c0ec:	00813983          	ld	s3,8(sp)
    8000c0f0:	03010113          	addi	sp,sp,48
    8000c0f4:	00008067          	ret
        mem_free(stack_space);
    8000c0f8:	00000097          	auipc	ra,0x0
    8000c0fc:	f58080e7          	jalr	-168(ra) # 8000c050 <_Z8mem_freePv>
    8000c100:	fd9ff06f          	j	8000c0d8 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>
        return -1;
    8000c104:	fff00513          	li	a0,-1
    8000c108:	fd5ff06f          	j	8000c0dc <_Z13thread_createPP7_threadPFvPvES2_+0x60>

000000008000c10c <_Z15thread_dispatchv>:

void thread_dispatch()
{
    8000c10c:	ff010113          	addi	sp,sp,-16
    8000c110:	00813423          	sd	s0,8(sp)
    8000c114:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    8000c118:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    8000c11c:	00000073          	ecall
}
    8000c120:	00813403          	ld	s0,8(sp)
    8000c124:	01010113          	addi	sp,sp,16
    8000c128:	00008067          	ret

000000008000c12c <_Z11thread_exitv>:

int thread_exit()
{
    8000c12c:	ff010113          	addi	sp,sp,-16
    8000c130:	00813423          	sd	s0,8(sp)
    8000c134:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000c138:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    8000c13c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c140:	00050513          	mv	a0,a0
    return result;
}
    8000c144:	0005051b          	sext.w	a0,a0
    8000c148:	00813403          	ld	s0,8(sp)
    8000c14c:	01010113          	addi	sp,sp,16
    8000c150:	00008067          	ret

000000008000c154 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    8000c154:	ff010113          	addi	sp,sp,-16
    8000c158:	00813423          	sd	s0,8(sp)
    8000c15c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    8000c160:	02059593          	slli	a1,a1,0x20
    8000c164:	0205d593          	srli	a1,a1,0x20
    8000c168:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c16c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000c170:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000c174:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c178:	00050513          	mv	a0,a0
    return result;
}
    8000c17c:	0005051b          	sext.w	a0,a0
    8000c180:	00813403          	ld	s0,8(sp)
    8000c184:	01010113          	addi	sp,sp,16
    8000c188:	00008067          	ret

000000008000c18c <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    8000c18c:	ff010113          	addi	sp,sp,-16
    8000c190:	00813423          	sd	s0,8(sp)
    8000c194:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c198:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    8000c19c:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    8000c1a0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1a4:	00050513          	mv	a0,a0
    return result;
}
    8000c1a8:	0005051b          	sext.w	a0,a0
    8000c1ac:	00813403          	ld	s0,8(sp)
    8000c1b0:	01010113          	addi	sp,sp,16
    8000c1b4:	00008067          	ret

000000008000c1b8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    8000c1b8:	ff010113          	addi	sp,sp,-16
    8000c1bc:	00813423          	sd	s0,8(sp)
    8000c1c0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000c1c4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    8000c1c8:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    8000c1cc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1d0:	00050513          	mv	a0,a0
    return result;
}
    8000c1d4:	0005051b          	sext.w	a0,a0
    8000c1d8:	00813403          	ld	s0,8(sp)
    8000c1dc:	01010113          	addi	sp,sp,16
    8000c1e0:	00008067          	ret

000000008000c1e4 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000c1e4:	ff010113          	addi	sp,sp,-16
    8000c1e8:	00813423          	sd	s0,8(sp)
    8000c1ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000c1f0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000c1f4:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    8000c1f8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1fc:	00050513          	mv	a0,a0
    return result;
}
    8000c200:	0005051b          	sext.w	a0,a0
    8000c204:	00813403          	ld	s0,8(sp)
    8000c208:	01010113          	addi	sp,sp,16
    8000c20c:	00008067          	ret

000000008000c210 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    8000c210:	ff010113          	addi	sp,sp,-16
    8000c214:	00813423          	sd	s0,8(sp)
    8000c218:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    8000c21c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    8000c220:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000c224:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c228:	00050513          	mv	a0,a0
    return result;
}
    8000c22c:	0005051b          	sext.w	a0,a0
    8000c230:	00813403          	ld	s0,8(sp)
    8000c234:	01010113          	addi	sp,sp,16
    8000c238:	00008067          	ret

000000008000c23c <_Z12thread_startPv>:

int thread_start(void* p)
{
    8000c23c:	ff010113          	addi	sp,sp,-16
    8000c240:	00813423          	sd	s0,8(sp)
    8000c244:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    8000c248:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    8000c24c:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    8000c250:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c254:	00050513          	mv	a0,a0
    return result;
}
    8000c258:	0005051b          	sext.w	a0,a0
    8000c25c:	00813403          	ld	s0,8(sp)
    8000c260:	01010113          	addi	sp,sp,16
    8000c264:	00008067          	ret

000000008000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    8000c268:	fd010113          	addi	sp,sp,-48
    8000c26c:	02113423          	sd	ra,40(sp)
    8000c270:	02813023          	sd	s0,32(sp)
    8000c274:	00913c23          	sd	s1,24(sp)
    8000c278:	01213823          	sd	s2,16(sp)
    8000c27c:	01313423          	sd	s3,8(sp)
    8000c280:	03010413          	addi	s0,sp,48
    8000c284:	00050493          	mv	s1,a0
    8000c288:	00058913          	mv	s2,a1
    8000c28c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000c290:	00001537          	lui	a0,0x1
    8000c294:	00000097          	auipc	ra,0x0
    8000c298:	d8c080e7          	jalr	-628(ra) # 8000c020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    8000c29c:	04050a63          	beqz	a0,8000c2f0 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x88>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000c2a0:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    8000c2a4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    8000c2a8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8000c2ac:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000c2b0:	01400793          	li	a5,20
    8000c2b4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000c2b8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c2bc:	00050493          	mv	s1,a0

    if(result != 0)
    8000c2c0:	02049263          	bnez	s1,8000c2e4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x7c>
    {
        mem_free(stack_space);
    }

    return result;
    8000c2c4:	0004851b          	sext.w	a0,s1
}
    8000c2c8:	02813083          	ld	ra,40(sp)
    8000c2cc:	02013403          	ld	s0,32(sp)
    8000c2d0:	01813483          	ld	s1,24(sp)
    8000c2d4:	01013903          	ld	s2,16(sp)
    8000c2d8:	00813983          	ld	s3,8(sp)
    8000c2dc:	03010113          	addi	sp,sp,48
    8000c2e0:	00008067          	ret
        mem_free(stack_space);
    8000c2e4:	00000097          	auipc	ra,0x0
    8000c2e8:	d6c080e7          	jalr	-660(ra) # 8000c050 <_Z8mem_freePv>
    8000c2ec:	fd9ff06f          	j	8000c2c4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>
        return -1;
    8000c2f0:	fff00513          	li	a0,-1
    8000c2f4:	fd5ff06f          	j	8000c2c8 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x60>

000000008000c2f8 <_Z4getcv>:

char getc()
{
    8000c2f8:	ff010113          	addi	sp,sp,-16
    8000c2fc:	00813423          	sd	s0,8(sp)
    8000c300:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000c304:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    8000c308:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c30c:	00050513          	mv	a0,a0
    return (char)result;
}
    8000c310:	0ff57513          	andi	a0,a0,255
    8000c314:	00813403          	ld	s0,8(sp)
    8000c318:	01010113          	addi	sp,sp,16
    8000c31c:	00008067          	ret

000000008000c320 <_Z4putcc>:

void putc(char c)
{
    8000c320:	ff010113          	addi	sp,sp,-16
    8000c324:	00813423          	sd	s0,8(sp)
    8000c328:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    8000c32c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    8000c330:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000c334:	00000073          	ecall
}
    8000c338:	00813403          	ld	s0,8(sp)
    8000c33c:	01010113          	addi	sp,sp,16
    8000c340:	00008067          	ret

000000008000c344 <_Z17thread_delete_pcbP7_thread>:
//    __asm__ volatile("mv %0, a0" : "=r"(result));
//    return (char)result;
//}

int thread_delete_pcb(thread_t handle)
{
    8000c344:	ff010113          	addi	sp,sp,-16
    8000c348:	00813423          	sd	s0,8(sp)
    8000c34c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c350:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    8000c354:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    8000c358:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c35c:	00050513          	mv	a0,a0
    return (char)result;
}
    8000c360:	0ff57513          	andi	a0,a0,255
    8000c364:	00813403          	ld	s0,8(sp)
    8000c368:	01010113          	addi	sp,sp,16
    8000c36c:	00008067          	ret

000000008000c370 <_ZN7_threaddlEPv>:
//

#include "../../h/_thread.hpp"
#include "../../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    8000c370:	ff010113          	addi	sp,sp,-16
    8000c374:	00113423          	sd	ra,8(sp)
    8000c378:	00813023          	sd	s0,0(sp)
    8000c37c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    8000c380:	00000097          	auipc	ra,0x0
    8000c384:	fc4080e7          	jalr	-60(ra) # 8000c344 <_Z17thread_delete_pcbP7_thread>
    8000c388:	00813083          	ld	ra,8(sp)
    8000c38c:	00013403          	ld	s0,0(sp)
    8000c390:	01010113          	addi	sp,sp,16
    8000c394:	00008067          	ret

000000008000c398 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000c398:	fe010113          	addi	sp,sp,-32
    8000c39c:	00113c23          	sd	ra,24(sp)
    8000c3a0:	00813823          	sd	s0,16(sp)
    8000c3a4:	00913423          	sd	s1,8(sp)
    8000c3a8:	02010413          	addi	s0,sp,32
    8000c3ac:	00050493          	mv	s1,a0
    LOCK();
    8000c3b0:	00100613          	li	a2,1
    8000c3b4:	00000593          	li	a1,0
    8000c3b8:	00002517          	auipc	a0,0x2
    8000c3bc:	df050513          	addi	a0,a0,-528 # 8000e1a8 <lockPrint>
    8000c3c0:	00000097          	auipc	ra,0x0
    8000c3c4:	c40080e7          	jalr	-960(ra) # 8000c000 <copy_and_swap>
    8000c3c8:	fe0514e3          	bnez	a0,8000c3b0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000c3cc:	0004c503          	lbu	a0,0(s1)
    8000c3d0:	00050a63          	beqz	a0,8000c3e4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000c3d4:	00000097          	auipc	ra,0x0
    8000c3d8:	f4c080e7          	jalr	-180(ra) # 8000c320 <_Z4putcc>
        string++;
    8000c3dc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000c3e0:	fedff06f          	j	8000c3cc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000c3e4:	00000613          	li	a2,0
    8000c3e8:	00100593          	li	a1,1
    8000c3ec:	00002517          	auipc	a0,0x2
    8000c3f0:	dbc50513          	addi	a0,a0,-580 # 8000e1a8 <lockPrint>
    8000c3f4:	00000097          	auipc	ra,0x0
    8000c3f8:	c0c080e7          	jalr	-1012(ra) # 8000c000 <copy_and_swap>
    8000c3fc:	fe0514e3          	bnez	a0,8000c3e4 <_Z11printStringPKc+0x4c>
}
    8000c400:	01813083          	ld	ra,24(sp)
    8000c404:	01013403          	ld	s0,16(sp)
    8000c408:	00813483          	ld	s1,8(sp)
    8000c40c:	02010113          	addi	sp,sp,32
    8000c410:	00008067          	ret

000000008000c414 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000c414:	fd010113          	addi	sp,sp,-48
    8000c418:	02113423          	sd	ra,40(sp)
    8000c41c:	02813023          	sd	s0,32(sp)
    8000c420:	00913c23          	sd	s1,24(sp)
    8000c424:	01213823          	sd	s2,16(sp)
    8000c428:	01313423          	sd	s3,8(sp)
    8000c42c:	01413023          	sd	s4,0(sp)
    8000c430:	03010413          	addi	s0,sp,48
    8000c434:	00050993          	mv	s3,a0
    8000c438:	00058a13          	mv	s4,a1
    LOCK();
    8000c43c:	00100613          	li	a2,1
    8000c440:	00000593          	li	a1,0
    8000c444:	00002517          	auipc	a0,0x2
    8000c448:	d6450513          	addi	a0,a0,-668 # 8000e1a8 <lockPrint>
    8000c44c:	00000097          	auipc	ra,0x0
    8000c450:	bb4080e7          	jalr	-1100(ra) # 8000c000 <copy_and_swap>
    8000c454:	fe0514e3          	bnez	a0,8000c43c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000c458:	00000913          	li	s2,0
    8000c45c:	00090493          	mv	s1,s2
    8000c460:	0019091b          	addiw	s2,s2,1
    8000c464:	03495a63          	bge	s2,s4,8000c498 <_Z9getStringPci+0x84>
        cc = getc();
    8000c468:	00000097          	auipc	ra,0x0
    8000c46c:	e90080e7          	jalr	-368(ra) # 8000c2f8 <_Z4getcv>
        if(cc < 1)
    8000c470:	02050463          	beqz	a0,8000c498 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000c474:	009984b3          	add	s1,s3,s1
    8000c478:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000c47c:	00a00793          	li	a5,10
    8000c480:	00f50a63          	beq	a0,a5,8000c494 <_Z9getStringPci+0x80>
    8000c484:	00d00793          	li	a5,13
    8000c488:	fcf51ae3          	bne	a0,a5,8000c45c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000c48c:	00090493          	mv	s1,s2
    8000c490:	0080006f          	j	8000c498 <_Z9getStringPci+0x84>
    8000c494:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000c498:	009984b3          	add	s1,s3,s1
    8000c49c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000c4a0:	00000613          	li	a2,0
    8000c4a4:	00100593          	li	a1,1
    8000c4a8:	00002517          	auipc	a0,0x2
    8000c4ac:	d0050513          	addi	a0,a0,-768 # 8000e1a8 <lockPrint>
    8000c4b0:	00000097          	auipc	ra,0x0
    8000c4b4:	b50080e7          	jalr	-1200(ra) # 8000c000 <copy_and_swap>
    8000c4b8:	fe0514e3          	bnez	a0,8000c4a0 <_Z9getStringPci+0x8c>
    return buf;
}
    8000c4bc:	00098513          	mv	a0,s3
    8000c4c0:	02813083          	ld	ra,40(sp)
    8000c4c4:	02013403          	ld	s0,32(sp)
    8000c4c8:	01813483          	ld	s1,24(sp)
    8000c4cc:	01013903          	ld	s2,16(sp)
    8000c4d0:	00813983          	ld	s3,8(sp)
    8000c4d4:	00013a03          	ld	s4,0(sp)
    8000c4d8:	03010113          	addi	sp,sp,48
    8000c4dc:	00008067          	ret

000000008000c4e0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000c4e0:	ff010113          	addi	sp,sp,-16
    8000c4e4:	00813423          	sd	s0,8(sp)
    8000c4e8:	01010413          	addi	s0,sp,16
    8000c4ec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000c4f0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000c4f4:	0006c603          	lbu	a2,0(a3)
    8000c4f8:	fd06071b          	addiw	a4,a2,-48
    8000c4fc:	0ff77713          	andi	a4,a4,255
    8000c500:	00900793          	li	a5,9
    8000c504:	02e7e063          	bltu	a5,a4,8000c524 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000c508:	0025179b          	slliw	a5,a0,0x2
    8000c50c:	00a787bb          	addw	a5,a5,a0
    8000c510:	0017979b          	slliw	a5,a5,0x1
    8000c514:	00168693          	addi	a3,a3,1
    8000c518:	00c787bb          	addw	a5,a5,a2
    8000c51c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000c520:	fd5ff06f          	j	8000c4f4 <_Z11stringToIntPKc+0x14>
    return n;
}
    8000c524:	00813403          	ld	s0,8(sp)
    8000c528:	01010113          	addi	sp,sp,16
    8000c52c:	00008067          	ret

000000008000c530 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000c530:	fc010113          	addi	sp,sp,-64
    8000c534:	02113c23          	sd	ra,56(sp)
    8000c538:	02813823          	sd	s0,48(sp)
    8000c53c:	02913423          	sd	s1,40(sp)
    8000c540:	03213023          	sd	s2,32(sp)
    8000c544:	01313c23          	sd	s3,24(sp)
    8000c548:	04010413          	addi	s0,sp,64
    8000c54c:	00050493          	mv	s1,a0
    8000c550:	00058913          	mv	s2,a1
    8000c554:	00060993          	mv	s3,a2
    LOCK();
    8000c558:	00100613          	li	a2,1
    8000c55c:	00000593          	li	a1,0
    8000c560:	00002517          	auipc	a0,0x2
    8000c564:	c4850513          	addi	a0,a0,-952 # 8000e1a8 <lockPrint>
    8000c568:	00000097          	auipc	ra,0x0
    8000c56c:	a98080e7          	jalr	-1384(ra) # 8000c000 <copy_and_swap>
    8000c570:	fe0514e3          	bnez	a0,8000c558 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000c574:	00098463          	beqz	s3,8000c57c <_Z8printIntiii+0x4c>
    8000c578:	0804c463          	bltz	s1,8000c600 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000c57c:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000c580:	00000593          	li	a1,0
    }

    i = 0;
    8000c584:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000c588:	0009079b          	sext.w	a5,s2
    8000c58c:	0325773b          	remuw	a4,a0,s2
    8000c590:	00048613          	mv	a2,s1
    8000c594:	0014849b          	addiw	s1,s1,1
    8000c598:	02071693          	slli	a3,a4,0x20
    8000c59c:	0206d693          	srli	a3,a3,0x20
    8000c5a0:	00002717          	auipc	a4,0x2
    8000c5a4:	b7870713          	addi	a4,a4,-1160 # 8000e118 <digits>
    8000c5a8:	00d70733          	add	a4,a4,a3
    8000c5ac:	00074683          	lbu	a3,0(a4)
    8000c5b0:	fd040713          	addi	a4,s0,-48
    8000c5b4:	00c70733          	add	a4,a4,a2
    8000c5b8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000c5bc:	0005071b          	sext.w	a4,a0
    8000c5c0:	0325553b          	divuw	a0,a0,s2
    8000c5c4:	fcf772e3          	bgeu	a4,a5,8000c588 <_Z8printIntiii+0x58>
    if(neg)
    8000c5c8:	00058c63          	beqz	a1,8000c5e0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000c5cc:	fd040793          	addi	a5,s0,-48
    8000c5d0:	009784b3          	add	s1,a5,s1
    8000c5d4:	02d00793          	li	a5,45
    8000c5d8:	fef48823          	sb	a5,-16(s1)
    8000c5dc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000c5e0:	fff4849b          	addiw	s1,s1,-1
    8000c5e4:	0204c463          	bltz	s1,8000c60c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000c5e8:	fd040793          	addi	a5,s0,-48
    8000c5ec:	009787b3          	add	a5,a5,s1
    8000c5f0:	ff07c503          	lbu	a0,-16(a5)
    8000c5f4:	00000097          	auipc	ra,0x0
    8000c5f8:	d2c080e7          	jalr	-724(ra) # 8000c320 <_Z4putcc>
    8000c5fc:	fe5ff06f          	j	8000c5e0 <_Z8printIntiii+0xb0>
        x = -xx;
    8000c600:	4090053b          	negw	a0,s1
        neg = 1;
    8000c604:	00100593          	li	a1,1
        x = -xx;
    8000c608:	f7dff06f          	j	8000c584 <_Z8printIntiii+0x54>

    UNLOCK();
    8000c60c:	00000613          	li	a2,0
    8000c610:	00100593          	li	a1,1
    8000c614:	00002517          	auipc	a0,0x2
    8000c618:	b9450513          	addi	a0,a0,-1132 # 8000e1a8 <lockPrint>
    8000c61c:	00000097          	auipc	ra,0x0
    8000c620:	9e4080e7          	jalr	-1564(ra) # 8000c000 <copy_and_swap>
    8000c624:	fe0514e3          	bnez	a0,8000c60c <_Z8printIntiii+0xdc>
}
    8000c628:	03813083          	ld	ra,56(sp)
    8000c62c:	03013403          	ld	s0,48(sp)
    8000c630:	02813483          	ld	s1,40(sp)
    8000c634:	02013903          	ld	s2,32(sp)
    8000c638:	01813983          	ld	s3,24(sp)
    8000c63c:	04010113          	addi	sp,sp,64
    8000c640:	00008067          	ret

000000008000c644 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000c644:	fd010113          	addi	sp,sp,-48
    8000c648:	02113423          	sd	ra,40(sp)
    8000c64c:	02813023          	sd	s0,32(sp)
    8000c650:	00913c23          	sd	s1,24(sp)
    8000c654:	01213823          	sd	s2,16(sp)
    8000c658:	01313423          	sd	s3,8(sp)
    8000c65c:	03010413          	addi	s0,sp,48
    8000c660:	00050493          	mv	s1,a0
    8000c664:	00058993          	mv	s3,a1
    8000c668:	0015879b          	addiw	a5,a1,1
    8000c66c:	0007851b          	sext.w	a0,a5
    8000c670:	00f4a023          	sw	a5,0(s1)
    8000c674:	0004a823          	sw	zero,16(s1)
    8000c678:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000c67c:	00251513          	slli	a0,a0,0x2
    8000c680:	00000097          	auipc	ra,0x0
    8000c684:	9a0080e7          	jalr	-1632(ra) # 8000c020 <_Z9mem_allocm>
    8000c688:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000c68c:	01000513          	li	a0,16
    8000c690:	00001097          	auipc	ra,0x1
    8000c694:	db8080e7          	jalr	-584(ra) # 8000d448 <_Znwm>
    8000c698:	00050913          	mv	s2,a0
    8000c69c:	00050863          	beqz	a0,8000c6ac <_ZN9BufferCPPC1Ei+0x68>
    8000c6a0:	00000593          	li	a1,0
    8000c6a4:	00001097          	auipc	ra,0x1
    8000c6a8:	ff8080e7          	jalr	-8(ra) # 8000d69c <_ZN9SemaphoreC1Ej>
    8000c6ac:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000c6b0:	01000513          	li	a0,16
    8000c6b4:	00001097          	auipc	ra,0x1
    8000c6b8:	d94080e7          	jalr	-620(ra) # 8000d448 <_Znwm>
    8000c6bc:	00050913          	mv	s2,a0
    8000c6c0:	00050863          	beqz	a0,8000c6d0 <_ZN9BufferCPPC1Ei+0x8c>
    8000c6c4:	00098593          	mv	a1,s3
    8000c6c8:	00001097          	auipc	ra,0x1
    8000c6cc:	fd4080e7          	jalr	-44(ra) # 8000d69c <_ZN9SemaphoreC1Ej>
    8000c6d0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    8000c6d4:	01000513          	li	a0,16
    8000c6d8:	00001097          	auipc	ra,0x1
    8000c6dc:	d70080e7          	jalr	-656(ra) # 8000d448 <_Znwm>
    8000c6e0:	00050913          	mv	s2,a0
    8000c6e4:	00050863          	beqz	a0,8000c6f4 <_ZN9BufferCPPC1Ei+0xb0>
    8000c6e8:	00100593          	li	a1,1
    8000c6ec:	00001097          	auipc	ra,0x1
    8000c6f0:	fb0080e7          	jalr	-80(ra) # 8000d69c <_ZN9SemaphoreC1Ej>
    8000c6f4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000c6f8:	01000513          	li	a0,16
    8000c6fc:	00001097          	auipc	ra,0x1
    8000c700:	d4c080e7          	jalr	-692(ra) # 8000d448 <_Znwm>
    8000c704:	00050913          	mv	s2,a0
    8000c708:	00050863          	beqz	a0,8000c718 <_ZN9BufferCPPC1Ei+0xd4>
    8000c70c:	00100593          	li	a1,1
    8000c710:	00001097          	auipc	ra,0x1
    8000c714:	f8c080e7          	jalr	-116(ra) # 8000d69c <_ZN9SemaphoreC1Ej>
    8000c718:	0324b823          	sd	s2,48(s1)
}
    8000c71c:	02813083          	ld	ra,40(sp)
    8000c720:	02013403          	ld	s0,32(sp)
    8000c724:	01813483          	ld	s1,24(sp)
    8000c728:	01013903          	ld	s2,16(sp)
    8000c72c:	00813983          	ld	s3,8(sp)
    8000c730:	03010113          	addi	sp,sp,48
    8000c734:	00008067          	ret
    8000c738:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000c73c:	00090513          	mv	a0,s2
    8000c740:	00001097          	auipc	ra,0x1
    8000c744:	d30080e7          	jalr	-720(ra) # 8000d470 <_ZdlPv>
    8000c748:	00048513          	mv	a0,s1
    8000c74c:	ffffd097          	auipc	ra,0xffffd
    8000c750:	46c080e7          	jalr	1132(ra) # 80009bb8 <_Unwind_Resume>
    8000c754:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000c758:	00090513          	mv	a0,s2
    8000c75c:	00001097          	auipc	ra,0x1
    8000c760:	d14080e7          	jalr	-748(ra) # 8000d470 <_ZdlPv>
    8000c764:	00048513          	mv	a0,s1
    8000c768:	ffffd097          	auipc	ra,0xffffd
    8000c76c:	450080e7          	jalr	1104(ra) # 80009bb8 <_Unwind_Resume>
    8000c770:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000c774:	00090513          	mv	a0,s2
    8000c778:	00001097          	auipc	ra,0x1
    8000c77c:	cf8080e7          	jalr	-776(ra) # 8000d470 <_ZdlPv>
    8000c780:	00048513          	mv	a0,s1
    8000c784:	ffffd097          	auipc	ra,0xffffd
    8000c788:	434080e7          	jalr	1076(ra) # 80009bb8 <_Unwind_Resume>
    8000c78c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000c790:	00090513          	mv	a0,s2
    8000c794:	00001097          	auipc	ra,0x1
    8000c798:	cdc080e7          	jalr	-804(ra) # 8000d470 <_ZdlPv>
    8000c79c:	00048513          	mv	a0,s1
    8000c7a0:	ffffd097          	auipc	ra,0xffffd
    8000c7a4:	418080e7          	jalr	1048(ra) # 80009bb8 <_Unwind_Resume>

000000008000c7a8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000c7a8:	fe010113          	addi	sp,sp,-32
    8000c7ac:	00113c23          	sd	ra,24(sp)
    8000c7b0:	00813823          	sd	s0,16(sp)
    8000c7b4:	00913423          	sd	s1,8(sp)
    8000c7b8:	01213023          	sd	s2,0(sp)
    8000c7bc:	02010413          	addi	s0,sp,32
    8000c7c0:	00050493          	mv	s1,a0
    8000c7c4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000c7c8:	01853503          	ld	a0,24(a0)
    8000c7cc:	00001097          	auipc	ra,0x1
    8000c7d0:	e98080e7          	jalr	-360(ra) # 8000d664 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000c7d4:	0304b503          	ld	a0,48(s1)
    8000c7d8:	00001097          	auipc	ra,0x1
    8000c7dc:	e8c080e7          	jalr	-372(ra) # 8000d664 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000c7e0:	0084b783          	ld	a5,8(s1)
    8000c7e4:	0144a703          	lw	a4,20(s1)
    8000c7e8:	00271713          	slli	a4,a4,0x2
    8000c7ec:	00e787b3          	add	a5,a5,a4
    8000c7f0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000c7f4:	0144a783          	lw	a5,20(s1)
    8000c7f8:	0017879b          	addiw	a5,a5,1
    8000c7fc:	0004a703          	lw	a4,0(s1)
    8000c800:	02e7e7bb          	remw	a5,a5,a4
    8000c804:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000c808:	0304b503          	ld	a0,48(s1)
    8000c80c:	00001097          	auipc	ra,0x1
    8000c810:	edc080e7          	jalr	-292(ra) # 8000d6e8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000c814:	0204b503          	ld	a0,32(s1)
    8000c818:	00001097          	auipc	ra,0x1
    8000c81c:	ed0080e7          	jalr	-304(ra) # 8000d6e8 <_ZN9Semaphore6signalEv>

}
    8000c820:	01813083          	ld	ra,24(sp)
    8000c824:	01013403          	ld	s0,16(sp)
    8000c828:	00813483          	ld	s1,8(sp)
    8000c82c:	00013903          	ld	s2,0(sp)
    8000c830:	02010113          	addi	sp,sp,32
    8000c834:	00008067          	ret

000000008000c838 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000c838:	fe010113          	addi	sp,sp,-32
    8000c83c:	00113c23          	sd	ra,24(sp)
    8000c840:	00813823          	sd	s0,16(sp)
    8000c844:	00913423          	sd	s1,8(sp)
    8000c848:	01213023          	sd	s2,0(sp)
    8000c84c:	02010413          	addi	s0,sp,32
    8000c850:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000c854:	02053503          	ld	a0,32(a0)
    8000c858:	00001097          	auipc	ra,0x1
    8000c85c:	e0c080e7          	jalr	-500(ra) # 8000d664 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000c860:	0284b503          	ld	a0,40(s1)
    8000c864:	00001097          	auipc	ra,0x1
    8000c868:	e00080e7          	jalr	-512(ra) # 8000d664 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000c86c:	0084b703          	ld	a4,8(s1)
    8000c870:	0104a783          	lw	a5,16(s1)
    8000c874:	00279693          	slli	a3,a5,0x2
    8000c878:	00d70733          	add	a4,a4,a3
    8000c87c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000c880:	0017879b          	addiw	a5,a5,1
    8000c884:	0004a703          	lw	a4,0(s1)
    8000c888:	02e7e7bb          	remw	a5,a5,a4
    8000c88c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000c890:	0284b503          	ld	a0,40(s1)
    8000c894:	00001097          	auipc	ra,0x1
    8000c898:	e54080e7          	jalr	-428(ra) # 8000d6e8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000c89c:	0184b503          	ld	a0,24(s1)
    8000c8a0:	00001097          	auipc	ra,0x1
    8000c8a4:	e48080e7          	jalr	-440(ra) # 8000d6e8 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000c8a8:	00090513          	mv	a0,s2
    8000c8ac:	01813083          	ld	ra,24(sp)
    8000c8b0:	01013403          	ld	s0,16(sp)
    8000c8b4:	00813483          	ld	s1,8(sp)
    8000c8b8:	00013903          	ld	s2,0(sp)
    8000c8bc:	02010113          	addi	sp,sp,32
    8000c8c0:	00008067          	ret

000000008000c8c4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000c8c4:	fe010113          	addi	sp,sp,-32
    8000c8c8:	00113c23          	sd	ra,24(sp)
    8000c8cc:	00813823          	sd	s0,16(sp)
    8000c8d0:	00913423          	sd	s1,8(sp)
    8000c8d4:	01213023          	sd	s2,0(sp)
    8000c8d8:	02010413          	addi	s0,sp,32
    8000c8dc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000c8e0:	02853503          	ld	a0,40(a0)
    8000c8e4:	00001097          	auipc	ra,0x1
    8000c8e8:	d80080e7          	jalr	-640(ra) # 8000d664 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000c8ec:	0304b503          	ld	a0,48(s1)
    8000c8f0:	00001097          	auipc	ra,0x1
    8000c8f4:	d74080e7          	jalr	-652(ra) # 8000d664 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000c8f8:	0144a783          	lw	a5,20(s1)
    8000c8fc:	0104a903          	lw	s2,16(s1)
    8000c900:	0327ce63          	blt	a5,s2,8000c93c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000c904:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000c908:	0304b503          	ld	a0,48(s1)
    8000c90c:	00001097          	auipc	ra,0x1
    8000c910:	ddc080e7          	jalr	-548(ra) # 8000d6e8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000c914:	0284b503          	ld	a0,40(s1)
    8000c918:	00001097          	auipc	ra,0x1
    8000c91c:	dd0080e7          	jalr	-560(ra) # 8000d6e8 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000c920:	00090513          	mv	a0,s2
    8000c924:	01813083          	ld	ra,24(sp)
    8000c928:	01013403          	ld	s0,16(sp)
    8000c92c:	00813483          	ld	s1,8(sp)
    8000c930:	00013903          	ld	s2,0(sp)
    8000c934:	02010113          	addi	sp,sp,32
    8000c938:	00008067          	ret
        ret = cap - head + tail;
    8000c93c:	0004a703          	lw	a4,0(s1)
    8000c940:	4127093b          	subw	s2,a4,s2
    8000c944:	00f9093b          	addw	s2,s2,a5
    8000c948:	fc1ff06f          	j	8000c908 <_ZN9BufferCPP6getCntEv+0x44>

000000008000c94c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000c94c:	fe010113          	addi	sp,sp,-32
    8000c950:	00113c23          	sd	ra,24(sp)
    8000c954:	00813823          	sd	s0,16(sp)
    8000c958:	00913423          	sd	s1,8(sp)
    8000c95c:	02010413          	addi	s0,sp,32
    8000c960:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000c964:	00a00513          	li	a0,10
    8000c968:	00001097          	auipc	ra,0x1
    8000c96c:	de0080e7          	jalr	-544(ra) # 8000d748 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000c970:	00001517          	auipc	a0,0x1
    8000c974:	69050513          	addi	a0,a0,1680 # 8000e000 <userDataStart>
    8000c978:	00000097          	auipc	ra,0x0
    8000c97c:	a20080e7          	jalr	-1504(ra) # 8000c398 <_Z11printStringPKc>
    while (getCnt()) {
    8000c980:	00048513          	mv	a0,s1
    8000c984:	00000097          	auipc	ra,0x0
    8000c988:	f40080e7          	jalr	-192(ra) # 8000c8c4 <_ZN9BufferCPP6getCntEv>
    8000c98c:	02050c63          	beqz	a0,8000c9c4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000c990:	0084b783          	ld	a5,8(s1)
    8000c994:	0104a703          	lw	a4,16(s1)
    8000c998:	00271713          	slli	a4,a4,0x2
    8000c99c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000c9a0:	0007c503          	lbu	a0,0(a5)
    8000c9a4:	00001097          	auipc	ra,0x1
    8000c9a8:	da4080e7          	jalr	-604(ra) # 8000d748 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000c9ac:	0104a783          	lw	a5,16(s1)
    8000c9b0:	0017879b          	addiw	a5,a5,1
    8000c9b4:	0004a703          	lw	a4,0(s1)
    8000c9b8:	02e7e7bb          	remw	a5,a5,a4
    8000c9bc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000c9c0:	fc1ff06f          	j	8000c980 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000c9c4:	02100513          	li	a0,33
    8000c9c8:	00001097          	auipc	ra,0x1
    8000c9cc:	d80080e7          	jalr	-640(ra) # 8000d748 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000c9d0:	00a00513          	li	a0,10
    8000c9d4:	00001097          	auipc	ra,0x1
    8000c9d8:	d74080e7          	jalr	-652(ra) # 8000d748 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000c9dc:	0084b503          	ld	a0,8(s1)
    8000c9e0:	fffff097          	auipc	ra,0xfffff
    8000c9e4:	670080e7          	jalr	1648(ra) # 8000c050 <_Z8mem_freePv>
    delete itemAvailable;
    8000c9e8:	0204b503          	ld	a0,32(s1)
    8000c9ec:	00050863          	beqz	a0,8000c9fc <_ZN9BufferCPPD1Ev+0xb0>
    8000c9f0:	00053783          	ld	a5,0(a0)
    8000c9f4:	0087b783          	ld	a5,8(a5)
    8000c9f8:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000c9fc:	0184b503          	ld	a0,24(s1)
    8000ca00:	00050863          	beqz	a0,8000ca10 <_ZN9BufferCPPD1Ev+0xc4>
    8000ca04:	00053783          	ld	a5,0(a0)
    8000ca08:	0087b783          	ld	a5,8(a5)
    8000ca0c:	000780e7          	jalr	a5
    delete mutexTail;
    8000ca10:	0304b503          	ld	a0,48(s1)
    8000ca14:	00050863          	beqz	a0,8000ca24 <_ZN9BufferCPPD1Ev+0xd8>
    8000ca18:	00053783          	ld	a5,0(a0)
    8000ca1c:	0087b783          	ld	a5,8(a5)
    8000ca20:	000780e7          	jalr	a5
    delete mutexHead;
    8000ca24:	0284b503          	ld	a0,40(s1)
    8000ca28:	00050863          	beqz	a0,8000ca38 <_ZN9BufferCPPD1Ev+0xec>
    8000ca2c:	00053783          	ld	a5,0(a0)
    8000ca30:	0087b783          	ld	a5,8(a5)
    8000ca34:	000780e7          	jalr	a5
}
    8000ca38:	01813083          	ld	ra,24(sp)
    8000ca3c:	01013403          	ld	s0,16(sp)
    8000ca40:	00813483          	ld	s1,8(sp)
    8000ca44:	02010113          	addi	sp,sp,32
    8000ca48:	00008067          	ret

000000008000ca4c <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    8000ca4c:	fe010113          	addi	sp,sp,-32
    8000ca50:	00113c23          	sd	ra,24(sp)
    8000ca54:	00813823          	sd	s0,16(sp)
    8000ca58:	00913423          	sd	s1,8(sp)
    8000ca5c:	01213023          	sd	s2,0(sp)
    8000ca60:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000ca64:	00000913          	li	s2,0
    8000ca68:	0380006f          	j	8000caa0 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000ca6c:	fffff097          	auipc	ra,0xfffff
    8000ca70:	6a0080e7          	jalr	1696(ra) # 8000c10c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000ca74:	00148493          	addi	s1,s1,1
    8000ca78:	000027b7          	lui	a5,0x2
    8000ca7c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000ca80:	0097ee63          	bltu	a5,s1,8000ca9c <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000ca84:	00000713          	li	a4,0
    8000ca88:	000077b7          	lui	a5,0x7
    8000ca8c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000ca90:	fce7eee3          	bltu	a5,a4,8000ca6c <_Z11workerBodyAPv+0x20>
    8000ca94:	00170713          	addi	a4,a4,1
    8000ca98:	ff1ff06f          	j	8000ca88 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000ca9c:	00190913          	addi	s2,s2,1
    8000caa0:	00900793          	li	a5,9
    8000caa4:	0527e063          	bltu	a5,s2,8000cae4 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000caa8:	00001517          	auipc	a0,0x1
    8000caac:	57050513          	addi	a0,a0,1392 # 8000e018 <userDataStart+0x18>
    8000cab0:	00000097          	auipc	ra,0x0
    8000cab4:	8e8080e7          	jalr	-1816(ra) # 8000c398 <_Z11printStringPKc>
    8000cab8:	00000613          	li	a2,0
    8000cabc:	00a00593          	li	a1,10
    8000cac0:	0009051b          	sext.w	a0,s2
    8000cac4:	00000097          	auipc	ra,0x0
    8000cac8:	a6c080e7          	jalr	-1428(ra) # 8000c530 <_Z8printIntiii>
    8000cacc:	00001517          	auipc	a0,0x1
    8000cad0:	55450513          	addi	a0,a0,1364 # 8000e020 <userDataStart+0x20>
    8000cad4:	00000097          	auipc	ra,0x0
    8000cad8:	8c4080e7          	jalr	-1852(ra) # 8000c398 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000cadc:	00000493          	li	s1,0
    8000cae0:	f99ff06f          	j	8000ca78 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000cae4:	00001517          	auipc	a0,0x1
    8000cae8:	54450513          	addi	a0,a0,1348 # 8000e028 <userDataStart+0x28>
    8000caec:	00000097          	auipc	ra,0x0
    8000caf0:	8ac080e7          	jalr	-1876(ra) # 8000c398 <_Z11printStringPKc>
    finishedA = true;
    8000caf4:	00100793          	li	a5,1
    8000caf8:	00001717          	auipc	a4,0x1
    8000cafc:	6af70c23          	sb	a5,1720(a4) # 8000e1b0 <finishedA>
}
    8000cb00:	01813083          	ld	ra,24(sp)
    8000cb04:	01013403          	ld	s0,16(sp)
    8000cb08:	00813483          	ld	s1,8(sp)
    8000cb0c:	00013903          	ld	s2,0(sp)
    8000cb10:	02010113          	addi	sp,sp,32
    8000cb14:	00008067          	ret

000000008000cb18 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    8000cb18:	fe010113          	addi	sp,sp,-32
    8000cb1c:	00113c23          	sd	ra,24(sp)
    8000cb20:	00813823          	sd	s0,16(sp)
    8000cb24:	00913423          	sd	s1,8(sp)
    8000cb28:	01213023          	sd	s2,0(sp)
    8000cb2c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000cb30:	00000913          	li	s2,0
    8000cb34:	0380006f          	j	8000cb6c <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000cb38:	fffff097          	auipc	ra,0xfffff
    8000cb3c:	5d4080e7          	jalr	1492(ra) # 8000c10c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000cb40:	00148493          	addi	s1,s1,1
    8000cb44:	000027b7          	lui	a5,0x2
    8000cb48:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000cb4c:	0097ee63          	bltu	a5,s1,8000cb68 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000cb50:	00000713          	li	a4,0
    8000cb54:	000077b7          	lui	a5,0x7
    8000cb58:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000cb5c:	fce7eee3          	bltu	a5,a4,8000cb38 <_Z11workerBodyBPv+0x20>
    8000cb60:	00170713          	addi	a4,a4,1
    8000cb64:	ff1ff06f          	j	8000cb54 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000cb68:	00190913          	addi	s2,s2,1
    8000cb6c:	00f00793          	li	a5,15
    8000cb70:	0527e063          	bltu	a5,s2,8000cbb0 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000cb74:	00001517          	auipc	a0,0x1
    8000cb78:	4c450513          	addi	a0,a0,1220 # 8000e038 <userDataStart+0x38>
    8000cb7c:	00000097          	auipc	ra,0x0
    8000cb80:	81c080e7          	jalr	-2020(ra) # 8000c398 <_Z11printStringPKc>
    8000cb84:	00000613          	li	a2,0
    8000cb88:	00a00593          	li	a1,10
    8000cb8c:	0009051b          	sext.w	a0,s2
    8000cb90:	00000097          	auipc	ra,0x0
    8000cb94:	9a0080e7          	jalr	-1632(ra) # 8000c530 <_Z8printIntiii>
    8000cb98:	00001517          	auipc	a0,0x1
    8000cb9c:	48850513          	addi	a0,a0,1160 # 8000e020 <userDataStart+0x20>
    8000cba0:	fffff097          	auipc	ra,0xfffff
    8000cba4:	7f8080e7          	jalr	2040(ra) # 8000c398 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000cba8:	00000493          	li	s1,0
    8000cbac:	f99ff06f          	j	8000cb44 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    8000cbb0:	fffff097          	auipc	ra,0xfffff
    8000cbb4:	55c080e7          	jalr	1372(ra) # 8000c10c <_Z15thread_dispatchv>
    printString("B finished!\n");
    8000cbb8:	00001517          	auipc	a0,0x1
    8000cbbc:	48850513          	addi	a0,a0,1160 # 8000e040 <userDataStart+0x40>
    8000cbc0:	fffff097          	auipc	ra,0xfffff
    8000cbc4:	7d8080e7          	jalr	2008(ra) # 8000c398 <_Z11printStringPKc>
    finishedB = true;
    8000cbc8:	00100793          	li	a5,1
    8000cbcc:	00001717          	auipc	a4,0x1
    8000cbd0:	5ef702a3          	sb	a5,1509(a4) # 8000e1b1 <finishedB>
}
    8000cbd4:	01813083          	ld	ra,24(sp)
    8000cbd8:	01013403          	ld	s0,16(sp)
    8000cbdc:	00813483          	ld	s1,8(sp)
    8000cbe0:	00013903          	ld	s2,0(sp)
    8000cbe4:	02010113          	addi	sp,sp,32
    8000cbe8:	00008067          	ret

000000008000cbec <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    8000cbec:	fe010113          	addi	sp,sp,-32
    8000cbf0:	00113c23          	sd	ra,24(sp)
    8000cbf4:	00813823          	sd	s0,16(sp)
    8000cbf8:	00913423          	sd	s1,8(sp)
    8000cbfc:	01213023          	sd	s2,0(sp)
    8000cc00:	02010413          	addi	s0,sp,32
    8000cc04:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000cc08:	00100793          	li	a5,1
    8000cc0c:	02a7f863          	bgeu	a5,a0,8000cc3c <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000cc10:	00a00793          	li	a5,10
    8000cc14:	02f577b3          	remu	a5,a0,a5
    8000cc18:	02078e63          	beqz	a5,8000cc54 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000cc1c:	fff48513          	addi	a0,s1,-1
    8000cc20:	00000097          	auipc	ra,0x0
    8000cc24:	fcc080e7          	jalr	-52(ra) # 8000cbec <_Z9fibonaccim>
    8000cc28:	00050913          	mv	s2,a0
    8000cc2c:	ffe48513          	addi	a0,s1,-2
    8000cc30:	00000097          	auipc	ra,0x0
    8000cc34:	fbc080e7          	jalr	-68(ra) # 8000cbec <_Z9fibonaccim>
    8000cc38:	00a90533          	add	a0,s2,a0
}
    8000cc3c:	01813083          	ld	ra,24(sp)
    8000cc40:	01013403          	ld	s0,16(sp)
    8000cc44:	00813483          	ld	s1,8(sp)
    8000cc48:	00013903          	ld	s2,0(sp)
    8000cc4c:	02010113          	addi	sp,sp,32
    8000cc50:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000cc54:	fffff097          	auipc	ra,0xfffff
    8000cc58:	4b8080e7          	jalr	1208(ra) # 8000c10c <_Z15thread_dispatchv>
    8000cc5c:	fc1ff06f          	j	8000cc1c <_Z9fibonaccim+0x30>

000000008000cc60 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    8000cc60:	fe010113          	addi	sp,sp,-32
    8000cc64:	00113c23          	sd	ra,24(sp)
    8000cc68:	00813823          	sd	s0,16(sp)
    8000cc6c:	00913423          	sd	s1,8(sp)
    8000cc70:	01213023          	sd	s2,0(sp)
    8000cc74:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000cc78:	00000493          	li	s1,0
    8000cc7c:	0400006f          	j	8000ccbc <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000cc80:	00001517          	auipc	a0,0x1
    8000cc84:	3d050513          	addi	a0,a0,976 # 8000e050 <userDataStart+0x50>
    8000cc88:	fffff097          	auipc	ra,0xfffff
    8000cc8c:	710080e7          	jalr	1808(ra) # 8000c398 <_Z11printStringPKc>
    8000cc90:	00000613          	li	a2,0
    8000cc94:	00a00593          	li	a1,10
    8000cc98:	00048513          	mv	a0,s1
    8000cc9c:	00000097          	auipc	ra,0x0
    8000cca0:	894080e7          	jalr	-1900(ra) # 8000c530 <_Z8printIntiii>
    8000cca4:	00001517          	auipc	a0,0x1
    8000cca8:	37c50513          	addi	a0,a0,892 # 8000e020 <userDataStart+0x20>
    8000ccac:	fffff097          	auipc	ra,0xfffff
    8000ccb0:	6ec080e7          	jalr	1772(ra) # 8000c398 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000ccb4:	0014849b          	addiw	s1,s1,1
    8000ccb8:	0ff4f493          	andi	s1,s1,255
    8000ccbc:	00200793          	li	a5,2
    8000ccc0:	fc97f0e3          	bgeu	a5,s1,8000cc80 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    8000ccc4:	00001517          	auipc	a0,0x1
    8000ccc8:	39450513          	addi	a0,a0,916 # 8000e058 <userDataStart+0x58>
    8000cccc:	fffff097          	auipc	ra,0xfffff
    8000ccd0:	6cc080e7          	jalr	1740(ra) # 8000c398 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000ccd4:	00700313          	li	t1,7
    thread_dispatch();
    8000ccd8:	fffff097          	auipc	ra,0xfffff
    8000ccdc:	434080e7          	jalr	1076(ra) # 8000c10c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000cce0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000cce4:	00001517          	auipc	a0,0x1
    8000cce8:	38450513          	addi	a0,a0,900 # 8000e068 <userDataStart+0x68>
    8000ccec:	fffff097          	auipc	ra,0xfffff
    8000ccf0:	6ac080e7          	jalr	1708(ra) # 8000c398 <_Z11printStringPKc>
    8000ccf4:	00000613          	li	a2,0
    8000ccf8:	00a00593          	li	a1,10
    8000ccfc:	0009051b          	sext.w	a0,s2
    8000cd00:	00000097          	auipc	ra,0x0
    8000cd04:	830080e7          	jalr	-2000(ra) # 8000c530 <_Z8printIntiii>
    8000cd08:	00001517          	auipc	a0,0x1
    8000cd0c:	31850513          	addi	a0,a0,792 # 8000e020 <userDataStart+0x20>
    8000cd10:	fffff097          	auipc	ra,0xfffff
    8000cd14:	688080e7          	jalr	1672(ra) # 8000c398 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000cd18:	00c00513          	li	a0,12
    8000cd1c:	00000097          	auipc	ra,0x0
    8000cd20:	ed0080e7          	jalr	-304(ra) # 8000cbec <_Z9fibonaccim>
    8000cd24:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000cd28:	00001517          	auipc	a0,0x1
    8000cd2c:	34850513          	addi	a0,a0,840 # 8000e070 <userDataStart+0x70>
    8000cd30:	fffff097          	auipc	ra,0xfffff
    8000cd34:	668080e7          	jalr	1640(ra) # 8000c398 <_Z11printStringPKc>
    8000cd38:	00000613          	li	a2,0
    8000cd3c:	00a00593          	li	a1,10
    8000cd40:	0009051b          	sext.w	a0,s2
    8000cd44:	fffff097          	auipc	ra,0xfffff
    8000cd48:	7ec080e7          	jalr	2028(ra) # 8000c530 <_Z8printIntiii>
    8000cd4c:	00001517          	auipc	a0,0x1
    8000cd50:	2d450513          	addi	a0,a0,724 # 8000e020 <userDataStart+0x20>
    8000cd54:	fffff097          	auipc	ra,0xfffff
    8000cd58:	644080e7          	jalr	1604(ra) # 8000c398 <_Z11printStringPKc>
    8000cd5c:	0400006f          	j	8000cd9c <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000cd60:	00001517          	auipc	a0,0x1
    8000cd64:	2f050513          	addi	a0,a0,752 # 8000e050 <userDataStart+0x50>
    8000cd68:	fffff097          	auipc	ra,0xfffff
    8000cd6c:	630080e7          	jalr	1584(ra) # 8000c398 <_Z11printStringPKc>
    8000cd70:	00000613          	li	a2,0
    8000cd74:	00a00593          	li	a1,10
    8000cd78:	00048513          	mv	a0,s1
    8000cd7c:	fffff097          	auipc	ra,0xfffff
    8000cd80:	7b4080e7          	jalr	1972(ra) # 8000c530 <_Z8printIntiii>
    8000cd84:	00001517          	auipc	a0,0x1
    8000cd88:	29c50513          	addi	a0,a0,668 # 8000e020 <userDataStart+0x20>
    8000cd8c:	fffff097          	auipc	ra,0xfffff
    8000cd90:	60c080e7          	jalr	1548(ra) # 8000c398 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000cd94:	0014849b          	addiw	s1,s1,1
    8000cd98:	0ff4f493          	andi	s1,s1,255
    8000cd9c:	00500793          	li	a5,5
    8000cda0:	fc97f0e3          	bgeu	a5,s1,8000cd60 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    8000cda4:	fffff097          	auipc	ra,0xfffff
    8000cda8:	368080e7          	jalr	872(ra) # 8000c10c <_Z15thread_dispatchv>
    printString("A finished!\n");
    8000cdac:	00001517          	auipc	a0,0x1
    8000cdb0:	27c50513          	addi	a0,a0,636 # 8000e028 <userDataStart+0x28>
    8000cdb4:	fffff097          	auipc	ra,0xfffff
    8000cdb8:	5e4080e7          	jalr	1508(ra) # 8000c398 <_Z11printStringPKc>
    finishedC = true;
    8000cdbc:	00100793          	li	a5,1
    8000cdc0:	00001717          	auipc	a4,0x1
    8000cdc4:	3ef70923          	sb	a5,1010(a4) # 8000e1b2 <finishedC>
}
    8000cdc8:	01813083          	ld	ra,24(sp)
    8000cdcc:	01013403          	ld	s0,16(sp)
    8000cdd0:	00813483          	ld	s1,8(sp)
    8000cdd4:	00013903          	ld	s2,0(sp)
    8000cdd8:	02010113          	addi	sp,sp,32
    8000cddc:	00008067          	ret

000000008000cde0 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    8000cde0:	fe010113          	addi	sp,sp,-32
    8000cde4:	00113c23          	sd	ra,24(sp)
    8000cde8:	00813823          	sd	s0,16(sp)
    8000cdec:	00913423          	sd	s1,8(sp)
    8000cdf0:	01213023          	sd	s2,0(sp)
    8000cdf4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000cdf8:	00a00493          	li	s1,10
    8000cdfc:	0400006f          	j	8000ce3c <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000ce00:	00001517          	auipc	a0,0x1
    8000ce04:	28050513          	addi	a0,a0,640 # 8000e080 <userDataStart+0x80>
    8000ce08:	fffff097          	auipc	ra,0xfffff
    8000ce0c:	590080e7          	jalr	1424(ra) # 8000c398 <_Z11printStringPKc>
    8000ce10:	00000613          	li	a2,0
    8000ce14:	00a00593          	li	a1,10
    8000ce18:	00048513          	mv	a0,s1
    8000ce1c:	fffff097          	auipc	ra,0xfffff
    8000ce20:	714080e7          	jalr	1812(ra) # 8000c530 <_Z8printIntiii>
    8000ce24:	00001517          	auipc	a0,0x1
    8000ce28:	1fc50513          	addi	a0,a0,508 # 8000e020 <userDataStart+0x20>
    8000ce2c:	fffff097          	auipc	ra,0xfffff
    8000ce30:	56c080e7          	jalr	1388(ra) # 8000c398 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000ce34:	0014849b          	addiw	s1,s1,1
    8000ce38:	0ff4f493          	andi	s1,s1,255
    8000ce3c:	00c00793          	li	a5,12
    8000ce40:	fc97f0e3          	bgeu	a5,s1,8000ce00 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000ce44:	00001517          	auipc	a0,0x1
    8000ce48:	24450513          	addi	a0,a0,580 # 8000e088 <userDataStart+0x88>
    8000ce4c:	fffff097          	auipc	ra,0xfffff
    8000ce50:	54c080e7          	jalr	1356(ra) # 8000c398 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000ce54:	00500313          	li	t1,5
    thread_dispatch();
    8000ce58:	fffff097          	auipc	ra,0xfffff
    8000ce5c:	2b4080e7          	jalr	692(ra) # 8000c10c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000ce60:	01000513          	li	a0,16
    8000ce64:	00000097          	auipc	ra,0x0
    8000ce68:	d88080e7          	jalr	-632(ra) # 8000cbec <_Z9fibonaccim>
    8000ce6c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000ce70:	00001517          	auipc	a0,0x1
    8000ce74:	22850513          	addi	a0,a0,552 # 8000e098 <userDataStart+0x98>
    8000ce78:	fffff097          	auipc	ra,0xfffff
    8000ce7c:	520080e7          	jalr	1312(ra) # 8000c398 <_Z11printStringPKc>
    8000ce80:	00000613          	li	a2,0
    8000ce84:	00a00593          	li	a1,10
    8000ce88:	0009051b          	sext.w	a0,s2
    8000ce8c:	fffff097          	auipc	ra,0xfffff
    8000ce90:	6a4080e7          	jalr	1700(ra) # 8000c530 <_Z8printIntiii>
    8000ce94:	00001517          	auipc	a0,0x1
    8000ce98:	18c50513          	addi	a0,a0,396 # 8000e020 <userDataStart+0x20>
    8000ce9c:	fffff097          	auipc	ra,0xfffff
    8000cea0:	4fc080e7          	jalr	1276(ra) # 8000c398 <_Z11printStringPKc>
    8000cea4:	0400006f          	j	8000cee4 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000cea8:	00001517          	auipc	a0,0x1
    8000ceac:	1d850513          	addi	a0,a0,472 # 8000e080 <userDataStart+0x80>
    8000ceb0:	fffff097          	auipc	ra,0xfffff
    8000ceb4:	4e8080e7          	jalr	1256(ra) # 8000c398 <_Z11printStringPKc>
    8000ceb8:	00000613          	li	a2,0
    8000cebc:	00a00593          	li	a1,10
    8000cec0:	00048513          	mv	a0,s1
    8000cec4:	fffff097          	auipc	ra,0xfffff
    8000cec8:	66c080e7          	jalr	1644(ra) # 8000c530 <_Z8printIntiii>
    8000cecc:	00001517          	auipc	a0,0x1
    8000ced0:	15450513          	addi	a0,a0,340 # 8000e020 <userDataStart+0x20>
    8000ced4:	fffff097          	auipc	ra,0xfffff
    8000ced8:	4c4080e7          	jalr	1220(ra) # 8000c398 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000cedc:	0014849b          	addiw	s1,s1,1
    8000cee0:	0ff4f493          	andi	s1,s1,255
    8000cee4:	00f00793          	li	a5,15
    8000cee8:	fc97f0e3          	bgeu	a5,s1,8000cea8 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    8000ceec:	fffff097          	auipc	ra,0xfffff
    8000cef0:	220080e7          	jalr	544(ra) # 8000c10c <_Z15thread_dispatchv>
    printString("D finished!\n");
    8000cef4:	00001517          	auipc	a0,0x1
    8000cef8:	1b450513          	addi	a0,a0,436 # 8000e0a8 <userDataStart+0xa8>
    8000cefc:	fffff097          	auipc	ra,0xfffff
    8000cf00:	49c080e7          	jalr	1180(ra) # 8000c398 <_Z11printStringPKc>
    finishedD = true;
    8000cf04:	00100793          	li	a5,1
    8000cf08:	00001717          	auipc	a4,0x1
    8000cf0c:	2af705a3          	sb	a5,683(a4) # 8000e1b3 <finishedD>
}
    8000cf10:	01813083          	ld	ra,24(sp)
    8000cf14:	01013403          	ld	s0,16(sp)
    8000cf18:	00813483          	ld	s1,8(sp)
    8000cf1c:	00013903          	ld	s2,0(sp)
    8000cf20:	02010113          	addi	sp,sp,32
    8000cf24:	00008067          	ret

000000008000cf28 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000cf28:	fc010113          	addi	sp,sp,-64
    8000cf2c:	02113c23          	sd	ra,56(sp)
    8000cf30:	02813823          	sd	s0,48(sp)
    8000cf34:	02913423          	sd	s1,40(sp)
    8000cf38:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000cf3c:	00000613          	li	a2,0
    8000cf40:	00000597          	auipc	a1,0x0
    8000cf44:	b0c58593          	addi	a1,a1,-1268 # 8000ca4c <_Z11workerBodyAPv>
    8000cf48:	fc040513          	addi	a0,s0,-64
    8000cf4c:	fffff097          	auipc	ra,0xfffff
    8000cf50:	130080e7          	jalr	304(ra) # 8000c07c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000cf54:	00001517          	auipc	a0,0x1
    8000cf58:	16450513          	addi	a0,a0,356 # 8000e0b8 <userDataStart+0xb8>
    8000cf5c:	fffff097          	auipc	ra,0xfffff
    8000cf60:	43c080e7          	jalr	1084(ra) # 8000c398 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000cf64:	00000613          	li	a2,0
    8000cf68:	00000597          	auipc	a1,0x0
    8000cf6c:	bb058593          	addi	a1,a1,-1104 # 8000cb18 <_Z11workerBodyBPv>
    8000cf70:	fc840513          	addi	a0,s0,-56
    8000cf74:	fffff097          	auipc	ra,0xfffff
    8000cf78:	108080e7          	jalr	264(ra) # 8000c07c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000cf7c:	00001517          	auipc	a0,0x1
    8000cf80:	15450513          	addi	a0,a0,340 # 8000e0d0 <userDataStart+0xd0>
    8000cf84:	fffff097          	auipc	ra,0xfffff
    8000cf88:	414080e7          	jalr	1044(ra) # 8000c398 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000cf8c:	00000613          	li	a2,0
    8000cf90:	00000597          	auipc	a1,0x0
    8000cf94:	cd058593          	addi	a1,a1,-816 # 8000cc60 <_Z11workerBodyCPv>
    8000cf98:	fd040513          	addi	a0,s0,-48
    8000cf9c:	fffff097          	auipc	ra,0xfffff
    8000cfa0:	0e0080e7          	jalr	224(ra) # 8000c07c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000cfa4:	00001517          	auipc	a0,0x1
    8000cfa8:	14450513          	addi	a0,a0,324 # 8000e0e8 <userDataStart+0xe8>
    8000cfac:	fffff097          	auipc	ra,0xfffff
    8000cfb0:	3ec080e7          	jalr	1004(ra) # 8000c398 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000cfb4:	00000613          	li	a2,0
    8000cfb8:	00000597          	auipc	a1,0x0
    8000cfbc:	e2858593          	addi	a1,a1,-472 # 8000cde0 <_Z11workerBodyDPv>
    8000cfc0:	fd840513          	addi	a0,s0,-40
    8000cfc4:	fffff097          	auipc	ra,0xfffff
    8000cfc8:	0b8080e7          	jalr	184(ra) # 8000c07c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    8000cfcc:	00001517          	auipc	a0,0x1
    8000cfd0:	13450513          	addi	a0,a0,308 # 8000e100 <userDataStart+0x100>
    8000cfd4:	fffff097          	auipc	ra,0xfffff
    8000cfd8:	3c4080e7          	jalr	964(ra) # 8000c398 <_Z11printStringPKc>
    8000cfdc:	00c0006f          	j	8000cfe8 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000cfe0:	fffff097          	auipc	ra,0xfffff
    8000cfe4:	12c080e7          	jalr	300(ra) # 8000c10c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000cfe8:	00001797          	auipc	a5,0x1
    8000cfec:	1c87c783          	lbu	a5,456(a5) # 8000e1b0 <finishedA>
    8000cff0:	fe0788e3          	beqz	a5,8000cfe0 <_Z18Threads_C_API_testv+0xb8>
    8000cff4:	00001797          	auipc	a5,0x1
    8000cff8:	1bd7c783          	lbu	a5,445(a5) # 8000e1b1 <finishedB>
    8000cffc:	fe0782e3          	beqz	a5,8000cfe0 <_Z18Threads_C_API_testv+0xb8>
    8000d000:	00001797          	auipc	a5,0x1
    8000d004:	1b27c783          	lbu	a5,434(a5) # 8000e1b2 <finishedC>
    8000d008:	fc078ce3          	beqz	a5,8000cfe0 <_Z18Threads_C_API_testv+0xb8>
    8000d00c:	00001797          	auipc	a5,0x1
    8000d010:	1a77c783          	lbu	a5,423(a5) # 8000e1b3 <finishedD>
    8000d014:	fc0786e3          	beqz	a5,8000cfe0 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    8000d018:	fc040493          	addi	s1,s0,-64
    8000d01c:	0080006f          	j	8000d024 <_Z18Threads_C_API_testv+0xfc>
    8000d020:	00848493          	addi	s1,s1,8
    8000d024:	fe040793          	addi	a5,s0,-32
    8000d028:	00f48c63          	beq	s1,a5,8000d040 <_Z18Threads_C_API_testv+0x118>
    8000d02c:	0004b503          	ld	a0,0(s1)
    8000d030:	fe0508e3          	beqz	a0,8000d020 <_Z18Threads_C_API_testv+0xf8>
    8000d034:	fffff097          	auipc	ra,0xfffff
    8000d038:	33c080e7          	jalr	828(ra) # 8000c370 <_ZN7_threaddlEPv>
    8000d03c:	fe5ff06f          	j	8000d020 <_Z18Threads_C_API_testv+0xf8>
}
    8000d040:	03813083          	ld	ra,56(sp)
    8000d044:	03013403          	ld	s0,48(sp)
    8000d048:	02813483          	ld	s1,40(sp)
    8000d04c:	04010113          	addi	sp,sp,64
    8000d050:	00008067          	ret

000000008000d054 <_Z8userMainv>:
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

//#include "test1OS2.hpp"

void userMain()
{
    8000d054:	ff010113          	addi	sp,sp,-16
    8000d058:	00113423          	sd	ra,8(sp)
    8000d05c:	00813023          	sd	s0,0(sp)
    8000d060:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    8000d064:	00000097          	auipc	ra,0x0
    8000d068:	ec4080e7          	jalr	-316(ra) # 8000cf28 <_Z18Threads_C_API_testv>

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //userMainTest();
    8000d06c:	00813083          	ld	ra,8(sp)
    8000d070:	00013403          	ld	s0,0(sp)
    8000d074:	01010113          	addi	sp,sp,16
    8000d078:	00008067          	ret

000000008000d07c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000d07c:	fe010113          	addi	sp,sp,-32
    8000d080:	00113c23          	sd	ra,24(sp)
    8000d084:	00813823          	sd	s0,16(sp)
    8000d088:	00913423          	sd	s1,8(sp)
    8000d08c:	01213023          	sd	s2,0(sp)
    8000d090:	02010413          	addi	s0,sp,32
    8000d094:	00050493          	mv	s1,a0
    8000d098:	00058913          	mv	s2,a1
    8000d09c:	0015879b          	addiw	a5,a1,1
    8000d0a0:	0007851b          	sext.w	a0,a5
    8000d0a4:	00f4a023          	sw	a5,0(s1)
    8000d0a8:	0004a823          	sw	zero,16(s1)
    8000d0ac:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000d0b0:	00251513          	slli	a0,a0,0x2
    8000d0b4:	fffff097          	auipc	ra,0xfffff
    8000d0b8:	f6c080e7          	jalr	-148(ra) # 8000c020 <_Z9mem_allocm>
    8000d0bc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000d0c0:	00000593          	li	a1,0
    8000d0c4:	02048513          	addi	a0,s1,32
    8000d0c8:	fffff097          	auipc	ra,0xfffff
    8000d0cc:	08c080e7          	jalr	140(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000d0d0:	00090593          	mv	a1,s2
    8000d0d4:	01848513          	addi	a0,s1,24
    8000d0d8:	fffff097          	auipc	ra,0xfffff
    8000d0dc:	07c080e7          	jalr	124(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000d0e0:	00100593          	li	a1,1
    8000d0e4:	02848513          	addi	a0,s1,40
    8000d0e8:	fffff097          	auipc	ra,0xfffff
    8000d0ec:	06c080e7          	jalr	108(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000d0f0:	00100593          	li	a1,1
    8000d0f4:	03048513          	addi	a0,s1,48
    8000d0f8:	fffff097          	auipc	ra,0xfffff
    8000d0fc:	05c080e7          	jalr	92(ra) # 8000c154 <_Z8sem_openPP4_semj>
}
    8000d100:	01813083          	ld	ra,24(sp)
    8000d104:	01013403          	ld	s0,16(sp)
    8000d108:	00813483          	ld	s1,8(sp)
    8000d10c:	00013903          	ld	s2,0(sp)
    8000d110:	02010113          	addi	sp,sp,32
    8000d114:	00008067          	ret

000000008000d118 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000d118:	fe010113          	addi	sp,sp,-32
    8000d11c:	00113c23          	sd	ra,24(sp)
    8000d120:	00813823          	sd	s0,16(sp)
    8000d124:	00913423          	sd	s1,8(sp)
    8000d128:	01213023          	sd	s2,0(sp)
    8000d12c:	02010413          	addi	s0,sp,32
    8000d130:	00050493          	mv	s1,a0
    8000d134:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000d138:	01853503          	ld	a0,24(a0)
    8000d13c:	fffff097          	auipc	ra,0xfffff
    8000d140:	07c080e7          	jalr	124(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000d144:	0304b503          	ld	a0,48(s1)
    8000d148:	fffff097          	auipc	ra,0xfffff
    8000d14c:	070080e7          	jalr	112(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    8000d150:	0084b783          	ld	a5,8(s1)
    8000d154:	0144a703          	lw	a4,20(s1)
    8000d158:	00271713          	slli	a4,a4,0x2
    8000d15c:	00e787b3          	add	a5,a5,a4
    8000d160:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000d164:	0144a783          	lw	a5,20(s1)
    8000d168:	0017879b          	addiw	a5,a5,1
    8000d16c:	0004a703          	lw	a4,0(s1)
    8000d170:	02e7e7bb          	remw	a5,a5,a4
    8000d174:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000d178:	0304b503          	ld	a0,48(s1)
    8000d17c:	fffff097          	auipc	ra,0xfffff
    8000d180:	068080e7          	jalr	104(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000d184:	0204b503          	ld	a0,32(s1)
    8000d188:	fffff097          	auipc	ra,0xfffff
    8000d18c:	05c080e7          	jalr	92(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

}
    8000d190:	01813083          	ld	ra,24(sp)
    8000d194:	01013403          	ld	s0,16(sp)
    8000d198:	00813483          	ld	s1,8(sp)
    8000d19c:	00013903          	ld	s2,0(sp)
    8000d1a0:	02010113          	addi	sp,sp,32
    8000d1a4:	00008067          	ret

000000008000d1a8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000d1a8:	fe010113          	addi	sp,sp,-32
    8000d1ac:	00113c23          	sd	ra,24(sp)
    8000d1b0:	00813823          	sd	s0,16(sp)
    8000d1b4:	00913423          	sd	s1,8(sp)
    8000d1b8:	01213023          	sd	s2,0(sp)
    8000d1bc:	02010413          	addi	s0,sp,32
    8000d1c0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000d1c4:	02053503          	ld	a0,32(a0)
    8000d1c8:	fffff097          	auipc	ra,0xfffff
    8000d1cc:	ff0080e7          	jalr	-16(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    8000d1d0:	0284b503          	ld	a0,40(s1)
    8000d1d4:	fffff097          	auipc	ra,0xfffff
    8000d1d8:	fe4080e7          	jalr	-28(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8000d1dc:	0084b703          	ld	a4,8(s1)
    8000d1e0:	0104a783          	lw	a5,16(s1)
    8000d1e4:	00279693          	slli	a3,a5,0x2
    8000d1e8:	00d70733          	add	a4,a4,a3
    8000d1ec:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000d1f0:	0017879b          	addiw	a5,a5,1
    8000d1f4:	0004a703          	lw	a4,0(s1)
    8000d1f8:	02e7e7bb          	remw	a5,a5,a4
    8000d1fc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000d200:	0284b503          	ld	a0,40(s1)
    8000d204:	fffff097          	auipc	ra,0xfffff
    8000d208:	fe0080e7          	jalr	-32(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000d20c:	0184b503          	ld	a0,24(s1)
    8000d210:	fffff097          	auipc	ra,0xfffff
    8000d214:	fd4080e7          	jalr	-44(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    return ret;
}
    8000d218:	00090513          	mv	a0,s2
    8000d21c:	01813083          	ld	ra,24(sp)
    8000d220:	01013403          	ld	s0,16(sp)
    8000d224:	00813483          	ld	s1,8(sp)
    8000d228:	00013903          	ld	s2,0(sp)
    8000d22c:	02010113          	addi	sp,sp,32
    8000d230:	00008067          	ret

000000008000d234 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000d234:	fe010113          	addi	sp,sp,-32
    8000d238:	00113c23          	sd	ra,24(sp)
    8000d23c:	00813823          	sd	s0,16(sp)
    8000d240:	00913423          	sd	s1,8(sp)
    8000d244:	01213023          	sd	s2,0(sp)
    8000d248:	02010413          	addi	s0,sp,32
    8000d24c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000d250:	02853503          	ld	a0,40(a0)
    8000d254:	fffff097          	auipc	ra,0xfffff
    8000d258:	f64080e7          	jalr	-156(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000d25c:	0304b503          	ld	a0,48(s1)
    8000d260:	fffff097          	auipc	ra,0xfffff
    8000d264:	f58080e7          	jalr	-168(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    8000d268:	0144a783          	lw	a5,20(s1)
    8000d26c:	0104a903          	lw	s2,16(s1)
    8000d270:	0327ce63          	blt	a5,s2,8000d2ac <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000d274:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000d278:	0304b503          	ld	a0,48(s1)
    8000d27c:	fffff097          	auipc	ra,0xfffff
    8000d280:	f68080e7          	jalr	-152(ra) # 8000c1e4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000d284:	0284b503          	ld	a0,40(s1)
    8000d288:	fffff097          	auipc	ra,0xfffff
    8000d28c:	f5c080e7          	jalr	-164(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    return ret;
    8000d290:	00090513          	mv	a0,s2
    8000d294:	01813083          	ld	ra,24(sp)
    8000d298:	01013403          	ld	s0,16(sp)
    8000d29c:	00813483          	ld	s1,8(sp)
    8000d2a0:	00013903          	ld	s2,0(sp)
    8000d2a4:	02010113          	addi	sp,sp,32
    8000d2a8:	00008067          	ret
        ret = cap - head + tail;
    8000d2ac:	0004a703          	lw	a4,0(s1)
    8000d2b0:	4127093b          	subw	s2,a4,s2
    8000d2b4:	00f9093b          	addw	s2,s2,a5
    8000d2b8:	fc1ff06f          	j	8000d278 <_ZN6Buffer6getCntEv+0x44>

000000008000d2bc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000d2bc:	fe010113          	addi	sp,sp,-32
    8000d2c0:	00113c23          	sd	ra,24(sp)
    8000d2c4:	00813823          	sd	s0,16(sp)
    8000d2c8:	00913423          	sd	s1,8(sp)
    8000d2cc:	02010413          	addi	s0,sp,32
    8000d2d0:	00050493          	mv	s1,a0
    putc('\n');
    8000d2d4:	00a00513          	li	a0,10
    8000d2d8:	fffff097          	auipc	ra,0xfffff
    8000d2dc:	048080e7          	jalr	72(ra) # 8000c320 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000d2e0:	00001517          	auipc	a0,0x1
    8000d2e4:	d2050513          	addi	a0,a0,-736 # 8000e000 <userDataStart>
    8000d2e8:	fffff097          	auipc	ra,0xfffff
    8000d2ec:	0b0080e7          	jalr	176(ra) # 8000c398 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000d2f0:	00048513          	mv	a0,s1
    8000d2f4:	00000097          	auipc	ra,0x0
    8000d2f8:	f40080e7          	jalr	-192(ra) # 8000d234 <_ZN6Buffer6getCntEv>
    8000d2fc:	02a05c63          	blez	a0,8000d334 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000d300:	0084b783          	ld	a5,8(s1)
    8000d304:	0104a703          	lw	a4,16(s1)
    8000d308:	00271713          	slli	a4,a4,0x2
    8000d30c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000d310:	0007c503          	lbu	a0,0(a5)
    8000d314:	fffff097          	auipc	ra,0xfffff
    8000d318:	00c080e7          	jalr	12(ra) # 8000c320 <_Z4putcc>
        head = (head + 1) % cap;
    8000d31c:	0104a783          	lw	a5,16(s1)
    8000d320:	0017879b          	addiw	a5,a5,1
    8000d324:	0004a703          	lw	a4,0(s1)
    8000d328:	02e7e7bb          	remw	a5,a5,a4
    8000d32c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000d330:	fc1ff06f          	j	8000d2f0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000d334:	02100513          	li	a0,33
    8000d338:	fffff097          	auipc	ra,0xfffff
    8000d33c:	fe8080e7          	jalr	-24(ra) # 8000c320 <_Z4putcc>
    putc('\n');
    8000d340:	00a00513          	li	a0,10
    8000d344:	fffff097          	auipc	ra,0xfffff
    8000d348:	fdc080e7          	jalr	-36(ra) # 8000c320 <_Z4putcc>
    mem_free(buffer);
    8000d34c:	0084b503          	ld	a0,8(s1)
    8000d350:	fffff097          	auipc	ra,0xfffff
    8000d354:	d00080e7          	jalr	-768(ra) # 8000c050 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000d358:	0204b503          	ld	a0,32(s1)
    8000d35c:	fffff097          	auipc	ra,0xfffff
    8000d360:	e30080e7          	jalr	-464(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8000d364:	0184b503          	ld	a0,24(s1)
    8000d368:	fffff097          	auipc	ra,0xfffff
    8000d36c:	e24080e7          	jalr	-476(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    8000d370:	0304b503          	ld	a0,48(s1)
    8000d374:	fffff097          	auipc	ra,0xfffff
    8000d378:	e18080e7          	jalr	-488(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000d37c:	0284b503          	ld	a0,40(s1)
    8000d380:	fffff097          	auipc	ra,0xfffff
    8000d384:	e0c080e7          	jalr	-500(ra) # 8000c18c <_Z9sem_closeP4_sem>
}
    8000d388:	01813083          	ld	ra,24(sp)
    8000d38c:	01013403          	ld	s0,16(sp)
    8000d390:	00813483          	ld	s1,8(sp)
    8000d394:	02010113          	addi	sp,sp,32
    8000d398:	00008067          	ret

000000008000d39c <_ZN6Thread6runnerEPv>:
    myHandle = nullptr;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    8000d39c:	ff010113          	addi	sp,sp,-16
    8000d3a0:	00113423          	sd	ra,8(sp)
    8000d3a4:	00813023          	sd	s0,0(sp)
    8000d3a8:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    8000d3ac:	00053783          	ld	a5,0(a0)
    8000d3b0:	0107b783          	ld	a5,16(a5)
    8000d3b4:	000780e7          	jalr	a5
}
    8000d3b8:	00813083          	ld	ra,8(sp)
    8000d3bc:	00013403          	ld	s0,0(sp)
    8000d3c0:	01010113          	addi	sp,sp,16
    8000d3c4:	00008067          	ret

000000008000d3c8 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    8000d3c8:	00001797          	auipc	a5,0x1
    8000d3cc:	da878793          	addi	a5,a5,-600 # 8000e170 <_ZTV6Thread+0x10>
    8000d3d0:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    8000d3d4:	00853503          	ld	a0,8(a0)
    8000d3d8:	02050663          	beqz	a0,8000d404 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    8000d3dc:	ff010113          	addi	sp,sp,-16
    8000d3e0:	00113423          	sd	ra,8(sp)
    8000d3e4:	00813023          	sd	s0,0(sp)
    8000d3e8:	01010413          	addi	s0,sp,16
    delete myHandle;
    8000d3ec:	fffff097          	auipc	ra,0xfffff
    8000d3f0:	f84080e7          	jalr	-124(ra) # 8000c370 <_ZN7_threaddlEPv>
}
    8000d3f4:	00813083          	ld	ra,8(sp)
    8000d3f8:	00013403          	ld	s0,0(sp)
    8000d3fc:	01010113          	addi	sp,sp,16
    8000d400:	00008067          	ret
    8000d404:	00008067          	ret

000000008000d408 <_ZN9SemaphoreD1Ev>:
    if(myHandle == nullptr)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    8000d408:	00001797          	auipc	a5,0x1
    8000d40c:	d9078793          	addi	a5,a5,-624 # 8000e198 <_ZTV9Semaphore+0x10>
    8000d410:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    8000d414:	00853503          	ld	a0,8(a0)
    8000d418:	02050663          	beqz	a0,8000d444 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    8000d41c:	ff010113          	addi	sp,sp,-16
    8000d420:	00113423          	sd	ra,8(sp)
    8000d424:	00813023          	sd	s0,0(sp)
    8000d428:	01010413          	addi	s0,sp,16
    delete myHandle;
    8000d42c:	00000097          	auipc	ra,0x0
    8000d430:	4c4080e7          	jalr	1220(ra) # 8000d8f0 <_ZN4_semdlEPv>
}
    8000d434:	00813083          	ld	ra,8(sp)
    8000d438:	00013403          	ld	s0,0(sp)
    8000d43c:	01010113          	addi	sp,sp,16
    8000d440:	00008067          	ret
    8000d444:	00008067          	ret

000000008000d448 <_Znwm>:
{
    8000d448:	ff010113          	addi	sp,sp,-16
    8000d44c:	00113423          	sd	ra,8(sp)
    8000d450:	00813023          	sd	s0,0(sp)
    8000d454:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000d458:	fffff097          	auipc	ra,0xfffff
    8000d45c:	bc8080e7          	jalr	-1080(ra) # 8000c020 <_Z9mem_allocm>
}
    8000d460:	00813083          	ld	ra,8(sp)
    8000d464:	00013403          	ld	s0,0(sp)
    8000d468:	01010113          	addi	sp,sp,16
    8000d46c:	00008067          	ret

000000008000d470 <_ZdlPv>:
{
    8000d470:	ff010113          	addi	sp,sp,-16
    8000d474:	00113423          	sd	ra,8(sp)
    8000d478:	00813023          	sd	s0,0(sp)
    8000d47c:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000d480:	fffff097          	auipc	ra,0xfffff
    8000d484:	bd0080e7          	jalr	-1072(ra) # 8000c050 <_Z8mem_freePv>
}
    8000d488:	00813083          	ld	ra,8(sp)
    8000d48c:	00013403          	ld	s0,0(sp)
    8000d490:	01010113          	addi	sp,sp,16
    8000d494:	00008067          	ret

000000008000d498 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    8000d498:	fe010113          	addi	sp,sp,-32
    8000d49c:	00113c23          	sd	ra,24(sp)
    8000d4a0:	00813823          	sd	s0,16(sp)
    8000d4a4:	00913423          	sd	s1,8(sp)
    8000d4a8:	02010413          	addi	s0,sp,32
    8000d4ac:	00050493          	mv	s1,a0
}
    8000d4b0:	00000097          	auipc	ra,0x0
    8000d4b4:	f18080e7          	jalr	-232(ra) # 8000d3c8 <_ZN6ThreadD1Ev>
    8000d4b8:	00048513          	mv	a0,s1
    8000d4bc:	00000097          	auipc	ra,0x0
    8000d4c0:	fb4080e7          	jalr	-76(ra) # 8000d470 <_ZdlPv>
    8000d4c4:	01813083          	ld	ra,24(sp)
    8000d4c8:	01013403          	ld	s0,16(sp)
    8000d4cc:	00813483          	ld	s1,8(sp)
    8000d4d0:	02010113          	addi	sp,sp,32
    8000d4d4:	00008067          	ret

000000008000d4d8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000d4d8:	fe010113          	addi	sp,sp,-32
    8000d4dc:	00113c23          	sd	ra,24(sp)
    8000d4e0:	00813823          	sd	s0,16(sp)
    8000d4e4:	00913423          	sd	s1,8(sp)
    8000d4e8:	02010413          	addi	s0,sp,32
    8000d4ec:	00050493          	mv	s1,a0
}
    8000d4f0:	00000097          	auipc	ra,0x0
    8000d4f4:	f18080e7          	jalr	-232(ra) # 8000d408 <_ZN9SemaphoreD1Ev>
    8000d4f8:	00048513          	mv	a0,s1
    8000d4fc:	00000097          	auipc	ra,0x0
    8000d500:	f74080e7          	jalr	-140(ra) # 8000d470 <_ZdlPv>
    8000d504:	01813083          	ld	ra,24(sp)
    8000d508:	01013403          	ld	s0,16(sp)
    8000d50c:	00813483          	ld	s1,8(sp)
    8000d510:	02010113          	addi	sp,sp,32
    8000d514:	00008067          	ret

000000008000d518 <_ZN6Thread5startEv>:
    if(myHandle != nullptr)
    8000d518:	00853503          	ld	a0,8(a0)
    8000d51c:	02050663          	beqz	a0,8000d548 <_ZN6Thread5startEv+0x30>
{
    8000d520:	ff010113          	addi	sp,sp,-16
    8000d524:	00113423          	sd	ra,8(sp)
    8000d528:	00813023          	sd	s0,0(sp)
    8000d52c:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    8000d530:	fffff097          	auipc	ra,0xfffff
    8000d534:	d0c080e7          	jalr	-756(ra) # 8000c23c <_Z12thread_startPv>
}
    8000d538:	00813083          	ld	ra,8(sp)
    8000d53c:	00013403          	ld	s0,0(sp)
    8000d540:	01010113          	addi	sp,sp,16
    8000d544:	00008067          	ret
        return -1;
    8000d548:	fff00513          	li	a0,-1
}
    8000d54c:	00008067          	ret

000000008000d550 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000d550:	ff010113          	addi	sp,sp,-16
    8000d554:	00113423          	sd	ra,8(sp)
    8000d558:	00813023          	sd	s0,0(sp)
    8000d55c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000d560:	fffff097          	auipc	ra,0xfffff
    8000d564:	bac080e7          	jalr	-1108(ra) # 8000c10c <_Z15thread_dispatchv>
}
    8000d568:	00813083          	ld	ra,8(sp)
    8000d56c:	00013403          	ld	s0,0(sp)
    8000d570:	01010113          	addi	sp,sp,16
    8000d574:	00008067          	ret

000000008000d578 <_ZN6Thread5sleepEm>:
{
    8000d578:	ff010113          	addi	sp,sp,-16
    8000d57c:	00113423          	sd	ra,8(sp)
    8000d580:	00813023          	sd	s0,0(sp)
    8000d584:	01010413          	addi	s0,sp,16
    time_sleep(time);
    8000d588:	fffff097          	auipc	ra,0xfffff
    8000d58c:	c88080e7          	jalr	-888(ra) # 8000c210 <_Z10time_sleepm>
}
    8000d590:	00813083          	ld	ra,8(sp)
    8000d594:	00013403          	ld	s0,0(sp)
    8000d598:	01010113          	addi	sp,sp,16
    8000d59c:	00008067          	ret

000000008000d5a0 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    8000d5a0:	fe010113          	addi	sp,sp,-32
    8000d5a4:	00113c23          	sd	ra,24(sp)
    8000d5a8:	00813823          	sd	s0,16(sp)
    8000d5ac:	00913423          	sd	s1,8(sp)
    8000d5b0:	01213023          	sd	s2,0(sp)
    8000d5b4:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    8000d5b8:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    8000d5bc:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    8000d5c0:	0004b783          	ld	a5,0(s1)
    8000d5c4:	0187b783          	ld	a5,24(a5)
    8000d5c8:	00048513          	mv	a0,s1
    8000d5cc:	000780e7          	jalr	a5
        Thread::sleep(time);
    8000d5d0:	00090513          	mv	a0,s2
    8000d5d4:	00000097          	auipc	ra,0x0
    8000d5d8:	fa4080e7          	jalr	-92(ra) # 8000d578 <_ZN6Thread5sleepEm>
    while(true)
    8000d5dc:	fe5ff06f          	j	8000d5c0 <_ZN14PeriodicThread6runnerEPv+0x20>

000000008000d5e0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    8000d5e0:	ff010113          	addi	sp,sp,-16
    8000d5e4:	00113423          	sd	ra,8(sp)
    8000d5e8:	00813023          	sd	s0,0(sp)
    8000d5ec:	01010413          	addi	s0,sp,16
    8000d5f0:	00001797          	auipc	a5,0x1
    8000d5f4:	b8078793          	addi	a5,a5,-1152 # 8000e170 <_ZTV6Thread+0x10>
    8000d5f8:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000d5fc:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    8000d600:	00850513          	addi	a0,a0,8
    8000d604:	fffff097          	auipc	ra,0xfffff
    8000d608:	c64080e7          	jalr	-924(ra) # 8000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000d60c:	00813083          	ld	ra,8(sp)
    8000d610:	00013403          	ld	s0,0(sp)
    8000d614:	01010113          	addi	sp,sp,16
    8000d618:	00008067          	ret

000000008000d61c <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000d61c:	ff010113          	addi	sp,sp,-16
    8000d620:	00113423          	sd	ra,8(sp)
    8000d624:	00813023          	sd	s0,0(sp)
    8000d628:	01010413          	addi	s0,sp,16
    8000d62c:	00001797          	auipc	a5,0x1
    8000d630:	b4478793          	addi	a5,a5,-1212 # 8000e170 <_ZTV6Thread+0x10>
    8000d634:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000d638:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    8000d63c:	00050613          	mv	a2,a0
    8000d640:	00000597          	auipc	a1,0x0
    8000d644:	d5c58593          	addi	a1,a1,-676 # 8000d39c <_ZN6Thread6runnerEPv>
    8000d648:	00850513          	addi	a0,a0,8
    8000d64c:	fffff097          	auipc	ra,0xfffff
    8000d650:	c1c080e7          	jalr	-996(ra) # 8000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000d654:	00813083          	ld	ra,8(sp)
    8000d658:	00013403          	ld	s0,0(sp)
    8000d65c:	01010113          	addi	sp,sp,16
    8000d660:	00008067          	ret

000000008000d664 <_ZN9Semaphore4waitEv>:
    if(myHandle == nullptr)
    8000d664:	00853503          	ld	a0,8(a0)
    8000d668:	02050663          	beqz	a0,8000d694 <_ZN9Semaphore4waitEv+0x30>
{
    8000d66c:	ff010113          	addi	sp,sp,-16
    8000d670:	00113423          	sd	ra,8(sp)
    8000d674:	00813023          	sd	s0,0(sp)
    8000d678:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000d67c:	fffff097          	auipc	ra,0xfffff
    8000d680:	b3c080e7          	jalr	-1220(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
}
    8000d684:	00813083          	ld	ra,8(sp)
    8000d688:	00013403          	ld	s0,0(sp)
    8000d68c:	01010113          	addi	sp,sp,16
    8000d690:	00008067          	ret
        return -1;
    8000d694:	fff00513          	li	a0,-1
}
    8000d698:	00008067          	ret

000000008000d69c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    8000d69c:	fe010113          	addi	sp,sp,-32
    8000d6a0:	00113c23          	sd	ra,24(sp)
    8000d6a4:	00813823          	sd	s0,16(sp)
    8000d6a8:	00913423          	sd	s1,8(sp)
    8000d6ac:	02010413          	addi	s0,sp,32
    8000d6b0:	00050493          	mv	s1,a0
    8000d6b4:	00001797          	auipc	a5,0x1
    8000d6b8:	ae478793          	addi	a5,a5,-1308 # 8000e198 <_ZTV9Semaphore+0x10>
    8000d6bc:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    8000d6c0:	00850513          	addi	a0,a0,8
    8000d6c4:	fffff097          	auipc	ra,0xfffff
    8000d6c8:	a90080e7          	jalr	-1392(ra) # 8000c154 <_Z8sem_openPP4_semj>
    if(retval != 0)
    8000d6cc:	00050463          	beqz	a0,8000d6d4 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = nullptr;
    8000d6d0:	0004b423          	sd	zero,8(s1)
}
    8000d6d4:	01813083          	ld	ra,24(sp)
    8000d6d8:	01013403          	ld	s0,16(sp)
    8000d6dc:	00813483          	ld	s1,8(sp)
    8000d6e0:	02010113          	addi	sp,sp,32
    8000d6e4:	00008067          	ret

000000008000d6e8 <_ZN9Semaphore6signalEv>:
    if(myHandle == nullptr)
    8000d6e8:	00853503          	ld	a0,8(a0)
    8000d6ec:	02050663          	beqz	a0,8000d718 <_ZN9Semaphore6signalEv+0x30>
{
    8000d6f0:	ff010113          	addi	sp,sp,-16
    8000d6f4:	00113423          	sd	ra,8(sp)
    8000d6f8:	00813023          	sd	s0,0(sp)
    8000d6fc:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000d700:	fffff097          	auipc	ra,0xfffff
    8000d704:	ae4080e7          	jalr	-1308(ra) # 8000c1e4 <_Z10sem_signalP4_sem>
}
    8000d708:	00813083          	ld	ra,8(sp)
    8000d70c:	00013403          	ld	s0,0(sp)
    8000d710:	01010113          	addi	sp,sp,16
    8000d714:	00008067          	ret
        return -1;
    8000d718:	fff00513          	li	a0,-1
}
    8000d71c:	00008067          	ret

000000008000d720 <_ZN7Console4getcEv>:
{
    8000d720:	ff010113          	addi	sp,sp,-16
    8000d724:	00113423          	sd	ra,8(sp)
    8000d728:	00813023          	sd	s0,0(sp)
    8000d72c:	01010413          	addi	s0,sp,16
    return ::getc();
    8000d730:	fffff097          	auipc	ra,0xfffff
    8000d734:	bc8080e7          	jalr	-1080(ra) # 8000c2f8 <_Z4getcv>
}
    8000d738:	00813083          	ld	ra,8(sp)
    8000d73c:	00013403          	ld	s0,0(sp)
    8000d740:	01010113          	addi	sp,sp,16
    8000d744:	00008067          	ret

000000008000d748 <_ZN7Console4putcEc>:
{
    8000d748:	ff010113          	addi	sp,sp,-16
    8000d74c:	00113423          	sd	ra,8(sp)
    8000d750:	00813023          	sd	s0,0(sp)
    8000d754:	01010413          	addi	s0,sp,16
    return ::putc(c);
    8000d758:	fffff097          	auipc	ra,0xfffff
    8000d75c:	bc8080e7          	jalr	-1080(ra) # 8000c320 <_Z4putcc>
}
    8000d760:	00813083          	ld	ra,8(sp)
    8000d764:	00013403          	ld	s0,0(sp)
    8000d768:	01010113          	addi	sp,sp,16
    8000d76c:	00008067          	ret

000000008000d770 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000d770:	fe010113          	addi	sp,sp,-32
    8000d774:	00113c23          	sd	ra,24(sp)
    8000d778:	00813823          	sd	s0,16(sp)
    8000d77c:	00913423          	sd	s1,8(sp)
    8000d780:	01213023          	sd	s2,0(sp)
    8000d784:	02010413          	addi	s0,sp,32
    8000d788:	00050493          	mv	s1,a0
    8000d78c:	00058913          	mv	s2,a1
    8000d790:	01000513          	li	a0,16
    8000d794:	00000097          	auipc	ra,0x0
    8000d798:	cb4080e7          	jalr	-844(ra) # 8000d448 <_Znwm>
    8000d79c:	00050613          	mv	a2,a0
    8000d7a0:	00050663          	beqz	a0,8000d7ac <_ZN14PeriodicThreadC1Em+0x3c>
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    8000d7a4:	00953023          	sd	s1,0(a0)
    8000d7a8:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000d7ac:	00000597          	auipc	a1,0x0
    8000d7b0:	df458593          	addi	a1,a1,-524 # 8000d5a0 <_ZN14PeriodicThread6runnerEPv>
    8000d7b4:	00048513          	mv	a0,s1
    8000d7b8:	00000097          	auipc	ra,0x0
    8000d7bc:	e28080e7          	jalr	-472(ra) # 8000d5e0 <_ZN6ThreadC1EPFvPvES0_>
    8000d7c0:	00001797          	auipc	a5,0x1
    8000d7c4:	98078793          	addi	a5,a5,-1664 # 8000e140 <_ZTV14PeriodicThread+0x10>
    8000d7c8:	00f4b023          	sd	a5,0(s1)
}
    8000d7cc:	01813083          	ld	ra,24(sp)
    8000d7d0:	01013403          	ld	s0,16(sp)
    8000d7d4:	00813483          	ld	s1,8(sp)
    8000d7d8:	00013903          	ld	s2,0(sp)
    8000d7dc:	02010113          	addi	sp,sp,32
    8000d7e0:	00008067          	ret

000000008000d7e4 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8000d7e4:	ff010113          	addi	sp,sp,-16
    8000d7e8:	00813423          	sd	s0,8(sp)
    8000d7ec:	01010413          	addi	s0,sp,16
    8000d7f0:	00813403          	ld	s0,8(sp)
    8000d7f4:	01010113          	addi	sp,sp,16
    8000d7f8:	00008067          	ret

000000008000d7fc <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    8000d7fc:	ff010113          	addi	sp,sp,-16
    8000d800:	00813423          	sd	s0,8(sp)
    8000d804:	01010413          	addi	s0,sp,16
    8000d808:	00813403          	ld	s0,8(sp)
    8000d80c:	01010113          	addi	sp,sp,16
    8000d810:	00008067          	ret

000000008000d814 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8000d814:	ff010113          	addi	sp,sp,-16
    8000d818:	00113423          	sd	ra,8(sp)
    8000d81c:	00813023          	sd	s0,0(sp)
    8000d820:	01010413          	addi	s0,sp,16
    8000d824:	00001797          	auipc	a5,0x1
    8000d828:	91c78793          	addi	a5,a5,-1764 # 8000e140 <_ZTV14PeriodicThread+0x10>
    8000d82c:	00f53023          	sd	a5,0(a0)
    8000d830:	00000097          	auipc	ra,0x0
    8000d834:	b98080e7          	jalr	-1128(ra) # 8000d3c8 <_ZN6ThreadD1Ev>
    8000d838:	00813083          	ld	ra,8(sp)
    8000d83c:	00013403          	ld	s0,0(sp)
    8000d840:	01010113          	addi	sp,sp,16
    8000d844:	00008067          	ret

000000008000d848 <_ZN14PeriodicThreadD0Ev>:
    8000d848:	fe010113          	addi	sp,sp,-32
    8000d84c:	00113c23          	sd	ra,24(sp)
    8000d850:	00813823          	sd	s0,16(sp)
    8000d854:	00913423          	sd	s1,8(sp)
    8000d858:	02010413          	addi	s0,sp,32
    8000d85c:	00050493          	mv	s1,a0
    8000d860:	00001797          	auipc	a5,0x1
    8000d864:	8e078793          	addi	a5,a5,-1824 # 8000e140 <_ZTV14PeriodicThread+0x10>
    8000d868:	00f53023          	sd	a5,0(a0)
    8000d86c:	00000097          	auipc	ra,0x0
    8000d870:	b5c080e7          	jalr	-1188(ra) # 8000d3c8 <_ZN6ThreadD1Ev>
    8000d874:	00048513          	mv	a0,s1
    8000d878:	00000097          	auipc	ra,0x0
    8000d87c:	bf8080e7          	jalr	-1032(ra) # 8000d470 <_ZdlPv>
    8000d880:	01813083          	ld	ra,24(sp)
    8000d884:	01013403          	ld	s0,16(sp)
    8000d888:	00813483          	ld	s1,8(sp)
    8000d88c:	02010113          	addi	sp,sp,32
    8000d890:	00008067          	ret

000000008000d894 <_ZN14PCBWrapperUser15userMainWrapperEPv>:
#include "../../h/PCBWrapperUser.hpp"
#include "../../h/syscall_c.hpp"
#include "test/userMain.hpp"

void PCBWrapperUser::userMainWrapper(void* a)
{
    8000d894:	ff010113          	addi	sp,sp,-16
    8000d898:	00113423          	sd	ra,8(sp)
    8000d89c:	00813023          	sd	s0,0(sp)
    8000d8a0:	01010413          	addi	s0,sp,16
    userMain();
    8000d8a4:	fffff097          	auipc	ra,0xfffff
    8000d8a8:	7b0080e7          	jalr	1968(ra) # 8000d054 <_Z8userMainv>
}
    8000d8ac:	00813083          	ld	ra,8(sp)
    8000d8b0:	00013403          	ld	s0,0(sp)
    8000d8b4:	01010113          	addi	sp,sp,16
    8000d8b8:	00008067          	ret

000000008000d8bc <_ZN14PCBWrapperUser11wrapperUserEPFvPvES0_>:

void PCBWrapperUser::wrapperUser(Body body, void* args)
{
    8000d8bc:	ff010113          	addi	sp,sp,-16
    8000d8c0:	00113423          	sd	ra,8(sp)
    8000d8c4:	00813023          	sd	s0,0(sp)
    8000d8c8:	01010413          	addi	s0,sp,16
    8000d8cc:	00050793          	mv	a5,a0
    body(args);
    8000d8d0:	00058513          	mv	a0,a1
    8000d8d4:	000780e7          	jalr	a5
    thread_exit();
    8000d8d8:	fffff097          	auipc	ra,0xfffff
    8000d8dc:	854080e7          	jalr	-1964(ra) # 8000c12c <_Z11thread_exitv>
    8000d8e0:	00813083          	ld	ra,8(sp)
    8000d8e4:	00013403          	ld	s0,0(sp)
    8000d8e8:	01010113          	addi	sp,sp,16
    8000d8ec:	00008067          	ret

000000008000d8f0 <_ZN4_semdlEPv>:
//

#include "../../h/_sem.hpp"
#include "../../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    8000d8f0:	ff010113          	addi	sp,sp,-16
    8000d8f4:	00113423          	sd	ra,8(sp)
    8000d8f8:	00813023          	sd	s0,0(sp)
    8000d8fc:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    8000d900:	fffff097          	auipc	ra,0xfffff
    8000d904:	88c080e7          	jalr	-1908(ra) # 8000c18c <_Z9sem_closeP4_sem>
}
    8000d908:	00813083          	ld	ra,8(sp)
    8000d90c:	00013403          	ld	s0,0(sp)
    8000d910:	01010113          	addi	sp,sp,16
    8000d914:	00008067          	ret
	...

000000008000e000 <userDataStart>:
    8000e000:	7542                	ld	a0,48(sp)
    8000e002:	6666                	ld	a2,88(sp)
    8000e004:	7265                	lui	tp,0xffff9
    8000e006:	6420                	ld	s0,72(s0)
    8000e008:	6c65                	lui	s8,0x19
    8000e00a:	7465                	lui	s0,0xffff9
    8000e00c:	6465                	lui	s0,0x19
    8000e00e:	0a21                	addi	s4,s4,8
	...
    8000e018:	3a41                	addiw	s4,s4,-16
    8000e01a:	6920                	ld	s0,80(a0)
    8000e01c:	003d                	c.nop	15
    8000e01e:	0000                	unimp
    8000e020:	000a                	c.slli	zero,0x2
    8000e022:	0000                	unimp
    8000e024:	0000                	unimp
    8000e026:	0000                	unimp
    8000e028:	2041                	0x2041
    8000e02a:	6966                	ld	s2,88(sp)
    8000e02c:	696e                	ld	s2,216(sp)
    8000e02e:	64656873          	csrrsi	a6,0x646,10
    8000e032:	0a21                	addi	s4,s4,8
    8000e034:	0000                	unimp
    8000e036:	0000                	unimp
    8000e038:	3a42                	fld	fs4,48(sp)
    8000e03a:	6920                	ld	s0,80(a0)
    8000e03c:	003d                	c.nop	15
    8000e03e:	0000                	unimp
    8000e040:	2042                	fld	ft0,16(sp)
    8000e042:	6966                	ld	s2,88(sp)
    8000e044:	696e                	ld	s2,216(sp)
    8000e046:	64656873          	csrrsi	a6,0x646,10
    8000e04a:	0a21                	addi	s4,s4,8
    8000e04c:	0000                	unimp
    8000e04e:	0000                	unimp
    8000e050:	69203a43          	fmadd.s	fs4,ft0,fs2,fa3,rup
    8000e054:	003d                	c.nop	15
    8000e056:	0000                	unimp
    8000e058:	64203a43          	0x64203a43
    8000e05c:	7369                	lui	t1,0xffffa
    8000e05e:	6170                	ld	a2,192(a0)
    8000e060:	6374                	ld	a3,192(a4)
    8000e062:	0a68                	addi	a0,sp,284
    8000e064:	0000                	unimp
    8000e066:	0000                	unimp
    8000e068:	74203a43          	0x74203a43
    8000e06c:	3d31                	addiw	s10,s10,-20
    8000e06e:	0000                	unimp
    8000e070:	66203a43          	fmadd.q	fs4,ft0,ft2,fa2,rup
    8000e074:	6269                	lui	tp,0x1a
    8000e076:	63616e6f          	jal	t3,800246ac <end+0x156ac>
    8000e07a:	3d69                	addiw	s10,s10,-6
    8000e07c:	0000                	unimp
    8000e07e:	0000                	unimp
    8000e080:	3a44                	fld	fs1,176(a2)
    8000e082:	6920                	ld	s0,80(a0)
    8000e084:	003d                	c.nop	15
    8000e086:	0000                	unimp
    8000e088:	3a44                	fld	fs1,176(a2)
    8000e08a:	6420                	ld	s0,72(s0)
    8000e08c:	7369                	lui	t1,0xffffa
    8000e08e:	6170                	ld	a2,192(a0)
    8000e090:	6374                	ld	a3,192(a4)
    8000e092:	0a68                	addi	a0,sp,284
    8000e094:	0000                	unimp
    8000e096:	0000                	unimp
    8000e098:	3a44                	fld	fs1,176(a2)
    8000e09a:	6620                	ld	s0,72(a2)
    8000e09c:	6269                	lui	tp,0x1a
    8000e09e:	63616e6f          	jal	t3,800246d4 <end+0x156d4>
    8000e0a2:	3d69                	addiw	s10,s10,-6
    8000e0a4:	0000                	unimp
    8000e0a6:	0000                	unimp
    8000e0a8:	2044                	fld	fs1,128(s0)
    8000e0aa:	6966                	ld	s2,88(sp)
    8000e0ac:	696e                	ld	s2,216(sp)
    8000e0ae:	64656873          	csrrsi	a6,0x646,10
    8000e0b2:	0a21                	addi	s4,s4,8
    8000e0b4:	0000                	unimp
    8000e0b6:	0000                	unimp
    8000e0b8:	6854                	ld	a3,144(s0)
    8000e0ba:	6572                	ld	a0,280(sp)
    8000e0bc:	6461                	lui	s0,0x18
    8000e0be:	2041                	0x2041
    8000e0c0:	61657263          	bgeu	a0,s6,8000e6c4 <finishedD+0x511>
    8000e0c4:	6574                	ld	a3,200(a0)
    8000e0c6:	0a64                	addi	s1,sp,284
	...
    8000e0d0:	6854                	ld	a3,144(s0)
    8000e0d2:	6572                	ld	a0,280(sp)
    8000e0d4:	6461                	lui	s0,0x18
    8000e0d6:	2042                	fld	ft0,16(sp)
    8000e0d8:	61657263          	bgeu	a0,s6,8000e6dc <finishedD+0x529>
    8000e0dc:	6574                	ld	a3,200(a0)
    8000e0de:	0a64                	addi	s1,sp,284
	...
    8000e0e8:	6854                	ld	a3,144(s0)
    8000e0ea:	6572                	ld	a0,280(sp)
    8000e0ec:	6461                	lui	s0,0x18
    8000e0ee:	72632043          	fmadd.d	ft0,ft6,ft6,fa4,rdn
    8000e0f2:	6165                	addi	sp,sp,112
    8000e0f4:	6574                	ld	a3,200(a0)
    8000e0f6:	0a64                	addi	s1,sp,284
	...
    8000e100:	6854                	ld	a3,144(s0)
    8000e102:	6572                	ld	a0,280(sp)
    8000e104:	6461                	lui	s0,0x18
    8000e106:	2044                	fld	fs1,128(s0)
    8000e108:	61657263          	bgeu	a0,s6,8000e70c <finishedD+0x559>
    8000e10c:	6574                	ld	a3,200(a0)
    8000e10e:	0a64                	addi	s1,sp,284
	...

000000008000e118 <digits>:
    8000e118:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
	...

000000008000e130 <_ZTV14PeriodicThread>:
	...
    8000e140:	d814 8000 0000 0000 d848 8000 0000 0000     ........H.......
    8000e150:	d7e4 8000 0000 0000 d7fc 8000 0000 0000     ................

000000008000e160 <_ZTV6Thread>:
	...
    8000e170:	d3c8 8000 0000 0000 d498 8000 0000 0000     ................
    8000e180:	d7e4 8000 0000 0000                         ........

000000008000e188 <_ZTV9Semaphore>:
	...
    8000e198:	d408 8000 0000 0000 d4d8 8000 0000 0000     ................

000000008000e1a8 <lockPrint>:
	...

000000008000e1b0 <finishedA>:
	...

000000008000e1b1 <finishedB>:
	...

000000008000e1b2 <finishedC>:
	...

000000008000e1b3 <finishedD>:
    8000e1b3:	0000 0000 1000 0000 0000 0000 0300 527a     ..............zR
    8000e1c3:	0100 017c 1b01 020d 2000 0000 1800 0000     ..|...... ......
    8000e1d3:	4c00 ffde 30ff 0000 0000 0e44 4410 0288     .L...0....D..D..
    8000e1e3:	0c44 0000 0000 020c 4410 000e 2000 0000     D........D... ..
    8000e1f3:	3c00 0000 5800 ffde 2cff 0000 0000 0e44     .<...X...,....D.
    8000e203:	4410 0288 0c44 0000 0000 020c 4410 000e     .D..D........D..
    8000e213:	3400 0000 6000 0000 6000 ffde 90ff 0000     .4...`...`......
    8000e223:	0000 0e44 0000 0000 0000 0000 0000 0a93     ..D.............
    8000e233:	0c44 0008 0000 0000 0000 020c 4430 44c9     D...........0D.D
    8000e243:	44d2 44d3 000e 0b44 2000 0000 9800 0000     .D.D..D.. ......
    8000e253:	b800 ffde 20ff 0000 0000 0e44 4410 0288     ..... ....D..D..
    8000e263:	0c44 0000 0000 020c 4410 000e 2000 0000     D........D... ..
    8000e273:	bc00 0000 b400 ffde 28ff 0000 0000 0e44     .........(....D.
    8000e283:	4410 0288 0c44 0000 0000 020c 4410 000e     .D..D........D..
    8000e293:	2000 0000 e000 0000 b800 ffde 38ff 0000     . ...........8..
    8000e2a3:	0000 0e44 4410 0288 0c44 0000 0000 020c     ..D..D..D.......
    8000e2b3:	4410 000e 2000 0000 0400 0001 cc00 ffde     .D... ..........
    8000e2c3:	2cff 0000 0000 0e44 4410 0288 0c44 0000     .,....D..D..D...
    8000e2d3:	0000 020c 4410 000e 2000 0000 2800 0001     .....D... ...(..
    8000e2e3:	d400 ffde 2cff 0000 0000 0e44 4410 0288     .....,....D..D..
    8000e2f3:	0c44 0000 0000 020c 4410 000e 2000 0000     D........D... ..
    8000e303:	4c00 0001 dc00 ffde 2cff 0000 0000 0e44     .L.......,....D.
    8000e313:	4410 0288 0c44 0000 0000 020c 4410 000e     .D..D........D..
    8000e323:	2000 0000 7000 0001 e400 ffde 2cff 0000     . ...p.......,..
    8000e333:	0000 0e44 4410 0288 0c44 0000 0000 020c     ..D..D..D.......
    8000e343:	4410 000e 2000 0000 9400 0001 ec00 ffde     .D... ..........
    8000e353:	2cff 0000 0000 0e44 4410 0288 0c44 0000     .,....D..D..D...
    8000e363:	0000 020c 4410 000e 3400 0000 b800 0001     .....D...4......
    8000e373:	f400 ffde 90ff 0000 0000 0e44 0000 0000     ..........D.....
    8000e383:	0000 0000 0000 0a93 0c44 0008 0000 0000     ........D.......
    8000e393:	0000 020c 4430 44c9 44d2 44d3 000e 0b44     ....0D.D.D.D..D.
    8000e3a3:	2000 0000 f000 0001 4c00 ffdf 28ff 0000     . .......L...(..
    8000e3b3:	0000 0e44 4410 0288 0c44 0000 0000 020c     ..D..D..D.......
    8000e3c3:	4410 000e 2000 0000 1400 0002 5000 ffdf     .D... .......P..
    8000e3d3:	24ff 0000 0000 0e44 4410 0288 0c44 0000     .$....D..D..D...
    8000e3e3:	0000 020c 4410 000e 2000 0000 3800 0002     .....D... ...8..
    8000e3f3:	5000 ffdf 2cff 0000 0000 0e44 4410 0288     .P...,....D..D..
    8000e403:	0c44 0000 0000 020c 4410 000e 1000 0000     D........D......
    8000e413:	0000 0000 0300 527a 0100 017c 1b01 020d     ......zR..|.....
    8000e423:	2800 0000 1800 0000 4400 ffdf 28ff 0000     .(.......D...(..
    8000e433:	0000 0e44 0000 0000 0488 0c44 0008 0000     ..D.......D.....
    8000e443:	0000 020c 4410 000e 0000 0000 1000 0000     .....D..........
    8000e453:	0000 0000 0300 527a 0100 017c 1b01 020d     ......zR..|.....
    8000e463:	2800 0000 1800 0000 2c00 ffdf 7cff 0000     .(.......,...|..
    8000e473:	0000 0e44 0000 0000 0000 0689 0c44 0008     ..D.........D...
    8000e483:	0002 0000 0c00 2002 c944 0e44 3400 0000     ....... D.D..4..
    8000e493:	4400 0000 7c00 ffdf ccff 0000 0000 0e44     .D...|........D.
	...
    8000e4af:	0c94 0c44 0008 0002 0000 0c00 3002 c944     ..D..........0D.
    8000e4bf:	d244 d344 d444 0e44 2000 0000 7c00 0000     D.D.D.D.. ...|..
    8000e4cf:	1000 ffe0 50ff 0000 0000 0e44 4410 0288     .....P....D..D..
    8000e4df:	0c44 0000 0000 020c 4410 000e 3000 0000     D........D...0..
    8000e4ef:	a000 0000 3c00 ffe0 14ff 0001 0000 0e44     .....<........D.
	...
    8000e507:	0000 0a93 0c44 0008 0002 0000 0c00 4002     ....D..........@
    8000e517:	c944 d244 d344 0e44 1800 0000 0000 0000     D.D.D.D.........
    8000e527:	0300 507a 524c 0100 017c 9b07 a37d ffff     ..zPLR..|...}...
    8000e537:	1b1b 020d 3800 0000 2000 0000 0000 ffe1     .....8... ......
    8000e547:	64ff 0001 0400 a2a1 ffff 0e44 0000 0000     .d........D.....
    8000e557:	0000 0000 0000 0a93 0c44 0008 0000 0000     ........D.......
    8000e567:	0000 020c 4430 44c9 44d2 44d3 000e 0b44     ....0D.D.D.D..D.
    8000e577:	1000 0000 0000 0000 0300 527a 0100 017c     ..........zR..|.
    8000e587:	1b01 020d 2c00 0000 1800 0000 1400 ffe2     .....,..........
    8000e597:	90ff 0000 0000 0e44 0000 0000 0000 0000     ......D.........
    8000e5a7:	0892 0c44 0008 0002 0000 0c00 2002 c944     ..D.......... D.
    8000e5b7:	d244 0e44 2c00 0000 4800 0000 7400 ffe2     D.D..,...H...t..
    8000e5c7:	8cff 0000 0000 0e44 0000 0000 0000 0000     ......D.........
    8000e5d7:	0892 0c44 0008 0002 0000 0c00 2002 c944     ..D.......... D.
    8000e5e7:	d244 0e44 3000 0000 7800 0000 d000 ffe2     D.D..0...x......
    8000e5f7:	88ff 0000 0000 0e44 0000 0000 0000 0000     ......D.........
    8000e607:	0892 0c44 0008 0000 0000 0000 020c 4420     ..D........... D
    8000e617:	44c9 44d2 000e 0b44 2c00 0000 0400 0001     .D.D..D..,......
    8000e627:	2400 ffe3 00ff 0001 0400 a25e ffff 0e44     .$........^...D.
    8000e637:	0000 0000 0000 0689 0c44 0008 0002 0000     ........D.......
    8000e647:	0c00 2002 c944 0e44 1000 0000 0000 0000     ... D.D.........
    8000e657:	0300 527a 0100 017c 1b01 020d 2c00 0000     ..zR..|......,..
    8000e667:	1800 0000 e000 ffe3 ccff 0000 0000 0e44     ..............D.
	...
    8000e67f:	0892 0c44 0008 0002 0000 0c00 2002 c944     ..D.......... D.
    8000e68f:	d244 0e44 2c00 0000 4800 0000 7c00 ffe4     D.D..,...H...|..
    8000e69f:	d4ff 0000 0000 0e44 0000 0000 0000 0000     ......D.........
    8000e6af:	0892 0c44 0008 0002 0000 0c00 2002 c944     ..D.......... D.
    8000e6bf:	d244 0e44 3000 0000 7800 0000 2000 ffe5     D.D..0...x... ..
    8000e6cf:	74ff 0000 0000 0e44 0000 0000 0000 0000     .t....D.........
    8000e6df:	0892 0c44 0000 0000 0000 0c00 2002 c944     ..D.......... D.
    8000e6ef:	d244 0e44 4400 000b 3000 0000 ac00 0000     D.D..D...0......
    8000e6ff:	6000 ffe5 80ff 0001 0000 0e44 0000 0000     .`........D.....
    8000e70f:	0000 0000 0892 0c44 0008 5403 0000 0000     ......D....T....
    8000e71f:	020c 4420 44c9 44d2 000e 0000 3000 0000     .. D.D.D.....0..
    8000e72f:	e000 0000 ac00 ffe6 48ff 0001 0000 0e44     .........H....D.
	...
    8000e747:	0892 0c44 0008 1c03 0000 0000 020c 4420     ..D........... D
    8000e757:	44c9 44d2 000e 0000 2c00 0000 1400 0001     .D.D.....,......
    8000e767:	c000 ffe7 2cff 0001 0000 0e44 0000 0000     .....,....D.....
    8000e777:	0000 0689 0c44 0008 0803 0000 0000 020c     ....D...........
    8000e787:	4440 44c9 000e 0000 2400 0000 4400 0001     @D.D.....$...D..
    8000e797:	bc00 ffe8 28ff 0000 0000 0e44 0000 0000     .....(....D.....
    8000e7a7:	0488 0c44 0008 0000 0000 020c 4410 000e     ..D..........D..
    8000e7b7:	1000 0000 0000 0000 0300 527a 0100 017c     ..........zR..|.
    8000e7c7:	1b01 020d 2c00 0000 1800 0000 a800 ffe8     .....,..........
    8000e7d7:	9cff 0000 0000 0e44 0000 0000 0000 0000     ......D.........
    8000e7e7:	0892 0c44 0008 0002 0000 0c00 2002 c944     ..D.......... D.
    8000e7f7:	d244 0e44 2c00 0000 4800 0000 1400 ffe9     D.D..,...H......
    8000e807:	90ff 0000 0000 0e44 0000 0000 0000 0000     ......D.........
    8000e817:	0892 0c44 0008 0002 0000 0c00 2002 c944     ..D.......... D.
    8000e827:	d244 0e44 2c00 0000 7800 0000 7400 ffe9     D.D..,...x...t..
    8000e837:	8cff 0000 0000 0e44 0000 0000 0000 0000     ......D.........
    8000e847:	0892 0c44 0008 0002 0000 0c00 2002 c944     ..D.......... D.
    8000e857:	d244 0e44 3000 0000 a800 0000 d000 ffe9     D.D..0..........
    8000e867:	88ff 0000 0000 0e44 0000 0000 0000 0000     ......D.........
    8000e877:	0892 0c44 0008 0000 0000 0000 020c 4420     ..D........... D
    8000e887:	44c9 44d2 000e 0b44 1800 0000 0000 0000     .D.D..D.........
    8000e897:	0300 507a 524c 0100 017c 9b07 a00d ffff     ..zPLR..|.......
    8000e8a7:	1b1b 020d 3000 0000 2000 0000 0800 ffea     .....0... ......
    8000e8b7:	e0ff 0000 0400 9fd6 ffff 0e44 0000 0000     ..........D.....
    8000e8c7:	0000 0689 0c44 0008 0002 0000 0c00 2002     ....D.......... 
    8000e8d7:	c944 0e44 0000 0000 1000 0000 0000 0000     D.D.............
    8000e8e7:	0300 527a 0100 017c 1b01 020d 2000 0000     ..zR..|...... ..
    8000e8f7:	1800 0000 e800 ffee 18ff 0000 0000 0e44     ..............D.
    8000e907:	4410 0288 0c44 0000 0000 020c 4410 000e     .D..D........D..
    8000e917:	2000 0000 3c00 0000 dc00 ffee 18ff 0000     . ...<..........
    8000e927:	0000 0e44 4410 0288 0c44 0000 0000 020c     ..D..D..D.......
    8000e937:	4410 000e 2400 0000 6000 0000 5800 ffea     .D...$...`...X..
    8000e947:	2cff 0000 0000 0e44 0000 0000 0488 0c44     .,....D.......D.
    8000e957:	0008 0000 0000 020c 4410 000e 1800 0000     .........D......
    8000e967:	0000 0000 0300 507a 524c 0100 017c 9b07     ......zPLR..|...
    8000e977:	9f39 ffff 1b1b 020d 2800 0000 2000 0000     9........(... ..
    8000e987:	4000 ffea 40ff 0000 0400 9f06 ffff 0e58     .@...@........X.
    8000e997:	0000 0000 0488 0c44 0008 0000 0000 020c     ......D.........
    8000e9a7:	4410 000e 2400 0000 d000 0000 6000 ffee     .D...$.......`..
    8000e9b7:	34ff 0000 0000 0e44 0000 0000 0488 0c44     .4....D.......D.
    8000e9c7:	0008 0000 0000 020c 4410 000e 2800 0000     .........D...(..
    8000e9d7:	7400 0000 2c00 ffea 40ff 0000 0400 9eb6     .t...,...@......
    8000e9e7:	ffff 0e58 0000 0000 0488 0c44 0008 0000     ..X.......D.....
    8000e9f7:	0000 020c 4410 000e 2400 0000 2400 0001     .....D...$...$..
    8000ea07:	4000 ffea 28ff 0000 0000 0e44 0000 0000     .@...(....D.....
    8000ea17:	0488 0c44 0008 0000 0000 020c 4410 000e     ..D..........D..
    8000ea27:	2400 0000 4c00 0001 4000 ffea 28ff 0000     .$...L...@...(..
    8000ea37:	0000 0e44 0000 0000 0488 0c44 0008 0000     ..D.......D.....
    8000ea47:	0000 020c 4410 000e 2800 0000 7400 0001     .....D...(...t..
    8000ea57:	4000 ffea 40ff 0000 0000 0e44 0000 0000     .@...@....D.....
    8000ea67:	0000 0689 0c44 0008 0000 0000 020c 4420     ....D......... D
    8000ea77:	44c9 000e 2800 0000 a000 0001 5400 ffea     .D...(.......T..
    8000ea87:	40ff 0000 0000 0e44 0000 0000 0000 0689     .@....D.........
    8000ea97:	0c44 0008 0000 0000 020c 4420 44c9 000e     D......... D.D..
    8000eaa7:	2800 0000 cc00 0001 9800 ffed 4cff 0000     .(...........L..
    8000eab7:	0000 0e44 0000 0000 0000 0689 0c44 0008     ..D.........D...
    8000eac7:	0000 0000 020c 4420 44c9 000e 2400 0000     ...... D.D...$..
    8000ead7:	f800 0001 3c00 ffea 38ff 0000 0000 0e4c     .....<...8....L.
    8000eae7:	0000 0000 0488 0c44 0008 0000 0000 020c     ......D.........
    8000eaf7:	4410 000e 2400 0000 2000 0002 4c00 ffea     .D...$... ...L..
    8000eb07:	28ff 0000 0000 0e44 0000 0000 0488 0c44     .(....D.......D.
    8000eb17:	0008 0000 0000 020c 4410 000e 2400 0000     .........D...$..
    8000eb27:	4800 0002 4c00 ffea 28ff 0000 0000 0e44     .H...L...(....D.
    8000eb37:	0000 0000 0488 0c44 0008 0000 0000 020c     ......D.........
    8000eb47:	4410 000e 2000 0000 7000 0002 4c00 ffea     .D... ...p...L..
    8000eb57:	40ff 0000 0000 0e44 0000 0000 0000 0000     .@....D.........
    8000eb67:	0892 0c44 0008 0000 2400 0000 9400 0002     ..D......$......
    8000eb77:	6800 ffea 3cff 0000 0000 0e44 0000 0000     .h...<....D.....
    8000eb87:	0488 0c44 0008 0000 0000 020c 4410 000e     ..D..........D..
    8000eb97:	2400 0000 bc00 0002 7c00 ffea 48ff 0000     .$.......|...H..
    8000eba7:	0000 0e44 0000 0000 0488 0c44 0008 0000     ..D.......D.....
    8000ebb7:	0000 020c 4410 000e 2400 0000 e400 0002     .....D...$......
    8000ebc7:	9c00 ffea 38ff 0000 0000 0e4c 0000 0000     .....8....L.....
    8000ebd7:	0488 0c44 0008 0000 0000 020c 4410 000e     ..D..........D..
    8000ebe7:	2800 0000 0c00 0003 ac00 ffea 4cff 0000     .(...........L..
    8000ebf7:	0000 0e44 0000 0000 0000 0689 0c44 0008     ..D.........D...
    8000ec07:	0000 0000 020c 4420 44c9 000e 2400 0000     ...... D.D...$..
    8000ec17:	3800 0003 cc00 ffea 38ff 0000 0000 0e4c     .8.......8....L.
    8000ec27:	0000 0000 0488 0c44 0008 0000 0000 020c     ......D.........
    8000ec37:	4410 000e 2400 0000 6000 0003 dc00 ffea     .D...$...`......
    8000ec47:	28ff 0000 0000 0e44 0000 0000 0488 0c44     .(....D.......D.
    8000ec57:	0008 0000 0000 020c 4410 000e 2400 0000     .........D...$..
    8000ec67:	8800 0003 dc00 ffea 28ff 0000 0000 0e44     .........(....D.
    8000ec77:	0000 0000 0488 0c44 0008 0000 0000 020c     ......D.........
    8000ec87:	4410 000e 3000 0000 b000 0003 dc00 ffea     .D...0..........
    8000ec97:	74ff 0000 0000 0e44 0000 0000 0000 0000     .t....D.........
    8000eca7:	0892 0c44 0008 0002 0000 0c00 2002 c944     ..D.......... D.
    8000ecb7:	d244 0e44 0000 0000 1000 0000 0000 0000     D.D.............
    8000ecc7:	0300 527a 0100 017c 1b01 020d 2400 0000     ..zR..|......$..
    8000ecd7:	1800 0000 b800 ffeb 28ff 0000 0000 0e44     .........(....D.
    8000ece7:	0000 0000 0488 0c44 0008 0000 0000 020c     ......D.........
    8000ecf7:	4410 000e 2800 0000 4000 0000 b800 ffeb     .D...(...@......
    8000ed07:	34ff 0000 0000 0e44 0000 0000 0488 0c44     .4....D.......D.
    8000ed17:	0008 0000 0000 020c 4410 000e 0000 0000     .........D......
    8000ed27:	1000 0000 0000 0000 0300 527a 0100 017c     ..........zR..|.
    8000ed37:	1b01 020d 2800 0000 1800 0000 ac00 ffeb     .....(..........
    8000ed47:	28ff 0000 0000 0e44 0000 0000 0488 0c44     .(....D.......D.
    8000ed57:	0008 0000 0000 020c 4410 000e 0000 0000     .........D......
	...
