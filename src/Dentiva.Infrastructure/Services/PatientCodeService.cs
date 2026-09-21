using Dentiva.Infrastructure.Data;using Microsoft.EntityFrameworkCore;
namespace Dentiva.Infrastructure.Services;public sealed class PatientCodeService(DentivaDbContext db){public async Task<string> NextAsync(CancellationToken ct=default){var n=await db.Patients.CountAsync(ct)+1;string code;do{code=$"DEN-{n++:000000}";}while(await db.Patients.AnyAsync(x=>x.PatientCode==code,ct));return code;}}
